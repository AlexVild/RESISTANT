if (!splash_done) image_alpha = min(image_alpha + 0.1, 1);
else if (!title_done) image_alpha = max(image_alpha - 0.04, 0);
else if (title_done) image_alpha = min(image_alpha + 0.2, 1);
