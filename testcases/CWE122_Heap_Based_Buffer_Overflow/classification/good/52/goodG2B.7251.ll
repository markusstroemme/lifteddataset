@global_var_b7508 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]

define void @anon2() local_unnamed_addr {
dec_label_pc_436af:
  call void @anon0(i32 7)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_43738:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_4383b:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv4.reg2mem = alloca i64, align 8
  %0 = call ptr @malloc(i32 40)
  %1 = ptrtoint ptr %0 to i64
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  store i64 0, ptr %indvars.iv4.reg2mem, align 8
  br i1 %3, label %dec_label_pc_43872, label %dec_label_pc_4385f

dec_label_pc_4385f:                               ; preds = %dec_label_pc_4383b
  call void @exit(i32 -1)
  unreachable

dec_label_pc_43872:                               ; preds = %dec_label_pc_4383b, %dec_label_pc_43872
  %indvars.iv4.reload = load i64, ptr %indvars.iv4.reg2mem, align 8
  %4 = mul i64 %indvars.iv4.reload, 4
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 10
  store i64 %indvars.iv.next5, ptr %indvars.iv4.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_43896, label %dec_label_pc_43872

dec_label_pc_43896:                               ; preds = %dec_label_pc_43872
  %7 = icmp slt i32 %data, 0
  br i1 %7, label %dec_label_pc_438e8, label %dec_label_pc_4389c

dec_label_pc_4389c:                               ; preds = %dec_label_pc_43896
  %8 = sext i32 %data to i64
  %9 = mul i64 %8, 4
  %10 = add i64 %9, %1
  %11 = inttoptr i64 %10 to ptr
  store i32 1, ptr %11, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_438bf

dec_label_pc_438bf:                               ; preds = %dec_label_pc_438bf, %dec_label_pc_4389c
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %12 = mul i64 %indvars.iv.reload, 4
  %13 = add i64 %12, %1
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_438f7, label %dec_label_pc_438bf

dec_label_pc_438e8:                               ; preds = %dec_label_pc_43896
  call void @printLine(ptr @global_var_b7508)
  br label %dec_label_pc_438f7

dec_label_pc_438f7:                               ; preds = %dec_label_pc_438bf, %dec_label_pc_438e8
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

