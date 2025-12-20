@global_var_b7a40 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]

define i32 @staticReturnsTrue.771() local_unnamed_addr {
dec_label_pc_49073:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_4983e:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %0 = call i32 @staticReturnsTrue.771()
  %1 = call i32 @staticReturnsTrue.771()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_49931, label %dec_label_pc_49878

dec_label_pc_49878:                               ; preds = %dec_label_pc_4983e
  %3 = icmp eq i32 %0, 0
  %spec.select = select i1 %3, i64 -4, i64 28
  %4 = call ptr @malloc(i32 40)
  %5 = ptrtoint ptr %4 to i64
  %6 = icmp eq ptr %4, null
  %7 = icmp eq i1 %6, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %7, label %dec_label_pc_498a0, label %dec_label_pc_4988d

dec_label_pc_4988d:                               ; preds = %dec_label_pc_49878
  call void @exit(i32 -1)
  unreachable

dec_label_pc_498a0:                               ; preds = %dec_label_pc_49878, %dec_label_pc_498a0
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %8 = mul i64 %indvars.iv5.reload, 4
  %9 = add i64 %8, %5
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_498c4, label %dec_label_pc_498a0

dec_label_pc_498c4:                               ; preds = %dec_label_pc_498a0
  br i1 %3, label %dec_label_pc_49916, label %dec_label_pc_498ca

dec_label_pc_498ca:                               ; preds = %dec_label_pc_498c4
  %11 = add i64 %spec.select, %5
  %12 = inttoptr i64 %11 to ptr
  store i32 1, ptr %12, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_498ed

dec_label_pc_498ed:                               ; preds = %dec_label_pc_498ed, %dec_label_pc_498ca
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %13 = mul i64 %indvars.iv.reload, 4
  %14 = add i64 %13, %5
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_49925, label %dec_label_pc_498ed

dec_label_pc_49916:                               ; preds = %dec_label_pc_498c4
  call void @printLine(ptr @global_var_b7a40)
  br label %dec_label_pc_49925

dec_label_pc_49925:                               ; preds = %dec_label_pc_498ed, %dec_label_pc_49916
  call void @free(ptr %4)
  br label %dec_label_pc_49931

dec_label_pc_49931:                               ; preds = %dec_label_pc_49925, %dec_label_pc_4983e
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

