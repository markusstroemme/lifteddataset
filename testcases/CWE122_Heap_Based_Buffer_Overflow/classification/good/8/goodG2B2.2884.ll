@global_var_b4620 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]

define i32 @staticReturnsTrue.283() local_unnamed_addr {
dec_label_pc_1a9f8:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1b0fa:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %0 = call i32 @staticReturnsTrue.283()
  %1 = call i32 @staticReturnsTrue.283()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1b1ed, label %dec_label_pc_1b134

dec_label_pc_1b134:                               ; preds = %dec_label_pc_1b0fa
  %3 = icmp eq i32 %0, 0
  %spec.select = select i1 %3, i64 -4, i64 28
  %4 = call ptr @malloc(i32 40)
  %5 = ptrtoint ptr %4 to i64
  %6 = icmp eq ptr %4, null
  %7 = icmp eq i1 %6, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %7, label %dec_label_pc_1b15c, label %dec_label_pc_1b149

dec_label_pc_1b149:                               ; preds = %dec_label_pc_1b134
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1b15c:                               ; preds = %dec_label_pc_1b134, %dec_label_pc_1b15c
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %8 = mul i64 %indvars.iv5.reload, 4
  %9 = add i64 %8, %5
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_1b180, label %dec_label_pc_1b15c

dec_label_pc_1b180:                               ; preds = %dec_label_pc_1b15c
  br i1 %3, label %dec_label_pc_1b1d2, label %dec_label_pc_1b186

dec_label_pc_1b186:                               ; preds = %dec_label_pc_1b180
  %11 = add i64 %spec.select, %5
  %12 = inttoptr i64 %11 to ptr
  store i32 1, ptr %12, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_1b1a9

dec_label_pc_1b1a9:                               ; preds = %dec_label_pc_1b1a9, %dec_label_pc_1b186
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %13 = mul i64 %indvars.iv.reload, 4
  %14 = add i64 %13, %5
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1b1e1, label %dec_label_pc_1b1a9

dec_label_pc_1b1d2:                               ; preds = %dec_label_pc_1b180
  call void @printLine(ptr @global_var_b4620)
  br label %dec_label_pc_1b1e1

dec_label_pc_1b1e1:                               ; preds = %dec_label_pc_1b1a9, %dec_label_pc_1b1d2
  call void @free(ptr %4)
  br label %dec_label_pc_1b1ed

dec_label_pc_1b1ed:                               ; preds = %dec_label_pc_1b1e1, %dec_label_pc_1b0fa
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9fee7:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bd318, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

