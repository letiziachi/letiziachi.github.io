import { z, defineCollection } from "astro:content";

const projectSchema = ({ image }) => z.object({
    title: z.string(),
    title_es: z.string(),
    custom_link_label: z.string().optional(),
    custom_link: z.string().optional(),
    description: z.string().optional(),
    updatedDate: z.coerce.date(),
    badge: z.string().optional(),
    images: z.array(image()),
    coverImage: image(),
    customCssClass: z.string().optional()
});

export type projectSchema = z.infer<typeof projectSchema>;

const projectCollection = defineCollection({ schema: projectSchema });

export const collections = {
    'projects': projectCollection
}
