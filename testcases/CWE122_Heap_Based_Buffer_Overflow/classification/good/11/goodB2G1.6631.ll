@global_var_b6fa0 = external constant [21 x i8]
@global_var_b6fb8 = external constant [36 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_3f48a:
  %indvars.iv.reg2mem = alloca i64, align 8
  %0 = call i32 @globalReturnsTrue()
  %1 = call i32 @globalReturnsFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_3f4d4, label %dec_label_pc_3f4c0

dec_label_pc_3f4c0:                               ; preds = %dec_label_pc_3f48a
  call void @printLine(ptr @global_var_b6fa0)
  br label %dec_label_pc_3f593

dec_label_pc_3f4d4:                               ; preds = %dec_label_pc_3f48a
  %3 = call ptr @malloc(i32 40)
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br i1 %6, label %dec_label_pc_3f4fc, label %dec_label_pc_3f4e9

dec_label_pc_3f4e9:                               ; preds = %dec_label_pc_3f4d4
  call void @exit(i32 -1)
  unreachable

dec_label_pc_3f4fc:                               ; preds = %dec_label_pc_3f4d4, %dec_label_pc_3f4fc
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %7 = mul i64 %indvars.iv.reload, 4
  %8 = add i64 %7, %4
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3f578, label %dec_label_pc_3f4fc

dec_label_pc_3f578:                               ; preds = %dec_label_pc_3f4fc
  call void @printLine(ptr @global_var_b6fb8)
  call void @free(ptr %3)
  br label %dec_label_pc_3f593

dec_label_pc_3f593:                               ; preds = %dec_label_pc_3f578, %dec_label_pc_3f4c0
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_a039c:
  ret i32 1
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_a03ab:
  ret i32 0
}

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

