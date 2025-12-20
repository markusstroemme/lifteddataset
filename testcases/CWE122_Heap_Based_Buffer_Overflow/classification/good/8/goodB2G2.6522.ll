@global_var_b6e98 = external constant [36 x i8]

define i32 @staticReturnsTrue.649() local_unnamed_addr {
dec_label_pc_3e43c:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_3e65c:
  %indvars.iv.reg2mem = alloca i64, align 8
  %0 = call i32 @staticReturnsTrue.649()
  %1 = call i32 @staticReturnsTrue.649()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_3e755, label %dec_label_pc_3e696

dec_label_pc_3e696:                               ; preds = %dec_label_pc_3e65c
  %3 = call ptr @malloc(i32 40)
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br i1 %6, label %dec_label_pc_3e6be, label %dec_label_pc_3e6ab

dec_label_pc_3e6ab:                               ; preds = %dec_label_pc_3e696
  call void @exit(i32 -1)
  unreachable

dec_label_pc_3e6be:                               ; preds = %dec_label_pc_3e696, %dec_label_pc_3e6be
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %7 = mul i64 %indvars.iv.reload, 4
  %8 = add i64 %7, %4
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3e73a, label %dec_label_pc_3e6be

dec_label_pc_3e73a:                               ; preds = %dec_label_pc_3e6be
  call void @printLine(ptr @global_var_b6e98)
  call void @free(ptr %3)
  br label %dec_label_pc_3e755

dec_label_pc_3e755:                               ; preds = %dec_label_pc_3e73a, %dec_label_pc_3e65c
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9fe8c:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9feaf, label %dec_label_pc_9fea3

dec_label_pc_9fea3:                               ; preds = %dec_label_pc_9fe8c
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9feaf

dec_label_pc_9feaf:                               ; preds = %dec_label_pc_9fea3, %dec_label_pc_9fe8c
  ret void
}

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

