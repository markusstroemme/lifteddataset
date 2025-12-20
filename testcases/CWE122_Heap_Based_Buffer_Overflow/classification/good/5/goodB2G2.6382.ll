@global_var_b6d70 = external constant [36 x i8]
@global_var_ec038 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3d712:
  %indvars.iv.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_ec038, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_3d803, label %dec_label_pc_3d744

dec_label_pc_3d744:                               ; preds = %dec_label_pc_3d712
  %2 = call ptr @malloc(i32 40)
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br i1 %5, label %dec_label_pc_3d76c, label %dec_label_pc_3d759

dec_label_pc_3d759:                               ; preds = %dec_label_pc_3d744
  call void @exit(i32 -1)
  unreachable

dec_label_pc_3d76c:                               ; preds = %dec_label_pc_3d744, %dec_label_pc_3d76c
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %6 = mul i64 %indvars.iv.reload, 4
  %7 = add i64 %6, %3
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3d7e8, label %dec_label_pc_3d76c

dec_label_pc_3d7e8:                               ; preds = %dec_label_pc_3d76c
  call void @printLine(ptr @global_var_b6d70)
  call void @free(ptr %2)
  br label %dec_label_pc_3d803

dec_label_pc_3d803:                               ; preds = %dec_label_pc_3d7e8, %dec_label_pc_3d712
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

