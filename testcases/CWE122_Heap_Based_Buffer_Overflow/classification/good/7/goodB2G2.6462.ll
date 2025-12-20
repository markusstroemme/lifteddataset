@global_var_b6e38 = external constant [36 x i8]
@global_var_ec03c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3e122:
  %indvars.iv.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_ec03c, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_3e215, label %dec_label_pc_3e156

dec_label_pc_3e156:                               ; preds = %dec_label_pc_3e122
  %3 = call ptr @malloc(i32 40)
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br i1 %6, label %dec_label_pc_3e17e, label %dec_label_pc_3e16b

dec_label_pc_3e16b:                               ; preds = %dec_label_pc_3e156
  call void @exit(i32 -1)
  unreachable

dec_label_pc_3e17e:                               ; preds = %dec_label_pc_3e156, %dec_label_pc_3e17e
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %7 = mul i64 %indvars.iv.reload, 4
  %8 = add i64 %7, %4
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3e1fa, label %dec_label_pc_3e17e

dec_label_pc_3e1fa:                               ; preds = %dec_label_pc_3e17e
  call void @printLine(ptr @global_var_b6e38)
  call void @free(ptr %3)
  br label %dec_label_pc_3e215

dec_label_pc_3e215:                               ; preds = %dec_label_pc_3e1fa, %dec_label_pc_3e122
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

