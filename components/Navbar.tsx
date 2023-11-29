"use client";
import Link from "next/link";
import Image from "next/image";
import { NAV_LINKS } from "@/constants";
import Button from "./Button";
import { useState } from "react";

const Navbar = () => {
  const [showNavbar, setNavbar] = useState(false);
  const toggleNavbar = () => {
    setNavbar(!showNavbar);
  };

  return (
    <nav className="flex justify-between max-container padding-container relative z-30 py-5 ">
      <Link href="/">
        <Image src="/hilink-logo.svg" alt="logo" width={74} height={29} />
      </Link>
      <ul
        className={`h-full gap-12 lg:flex ${
          showNavbar ? "relative right-1/4 bg-black -z-30" : "hidden"
        }`}
      >
        {NAV_LINKS.map((link) => (
          <Link
            href={link.href}
            key={link.key}
            className="regular-16 text-gray-50 flexCenter cursor-pointer pb-1.5 transition-all hover:font-bold"
          >
            {link.label}
          </Link>
        ))}
      </ul>
      <Image
        onClick={toggleNavbar}
        style={{ cursor: "pointer" }}
        src={showNavbar ? "/menu-cross.png" : "menu.svg"}
        alt="menu"
        width={32}
        height={32}
        className={`absolute right-5 cursor-pointer lg:hidden transition-opacity duration-2000 ease-in-out`}
      />

      <div className="lg:flex lg:justify-center hidden">
        <Button
          type="button"
          title="Login"
          icon="/user.svg"
          variant="btn_dark_green"
        />
      </div>
    </nav>
  );
};

export default Navbar;

function useClient(
  arg0: () => [
    boolean,
    import("react").Dispatch<import("react").SetStateAction<boolean>>
  ]
): [any, any] {
  throw new Error("Function not implemented.");
}
