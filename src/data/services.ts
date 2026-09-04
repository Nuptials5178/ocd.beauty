import forgejoIcon from "@assets/forgejo.svg?raw";
import navidromeIcon from "@assets/navidrome.svg?raw";
import woodpeckerCiIcon from "@assets/woodpecker-ci.svg?raw";

export interface Service {
  icon: string;
  name: string;
  url: string;
}

export const services: Service[] = [
  { icon: forgejoIcon, name: "Forgejo", url: "https://git.ocd.beauty" },
  { icon: navidromeIcon, name: "Navidrome", url: "https://music.ocd.beauty" },
  {
    icon: woodpeckerCiIcon,
    name: "Woodpecker CI",
    url: "https://ci.ocd.beauty",
  },
];
