@global_var_b7108 = external constant [36 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_40922:
  %indvars.iv.reg2mem = alloca i64, align 8
  %0 = call ptr @malloc(i32 40)
  %1 = ptrtoint ptr %0 to i64
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br i1 %3, label %dec_label_pc_40965, label %dec_label_pc_40952

dec_label_pc_40952:                               ; preds = %dec_label_pc_40922
  call void @exit(i32 -1)
  unreachable

dec_label_pc_40965:                               ; preds = %dec_label_pc_40922, %dec_label_pc_40965
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %4 = mul i64 %indvars.iv.reload, 4
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_409e1, label %dec_label_pc_40965

dec_label_pc_409e1:                               ; preds = %dec_label_pc_40965
  call void @printLine(ptr @global_var_b7108)
  call void @free(ptr %0)
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

