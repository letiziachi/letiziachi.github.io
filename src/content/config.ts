import { z, defineCollection } from "astro:content";

const projectSchema = z.object({
    title: z.string(),
    custom_link_label: z.string().optional(),
    custom_link: z.string().optional(),
    description: z.string(),
    updatedDate: z.coerce.date(),
    badge: z.string().optional(),
    images: z.array(z.string()).optional(),
    coverImage: z.string().optional(),
    customCssClass: z.string().optional()
});

export type projectSchema = z.infer<typeof projectSchema>;

const projectCollection = defineCollection({ schema: projectSchema });

export const collections = {
    'projects': projectCollection
}
