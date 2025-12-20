@global_var_b5d3c = external constant [16 x i8]
@global_var_b5d50 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_30327:
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-36 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 -1, ptr %stack_var_-36, align 4
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_ec080, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_3038c, label %dec_label_pc_3037b

dec_label_pc_3037b:                               ; preds = %dec_label_pc_30327
  %5 = call i32 @atoi(ptr nonnull %2)
  store i32 %5, ptr %stack_var_-36, align 4
  br label %dec_label_pc_3039b

dec_label_pc_3038c:                               ; preds = %dec_label_pc_30327
  call void @printLine(ptr @global_var_b5d3c)
  br label %dec_label_pc_3039b

dec_label_pc_3039b:                               ; preds = %dec_label_pc_3038c, %dec_label_pc_3037b
  call void @anon1(ptr nonnull %stack_var_-36)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_303bc, label %dec_label_pc_303b7

dec_label_pc_303b7:                               ; preds = %dec_label_pc_3039b
  call void @__stack_chk_fail()
  br label %dec_label_pc_303bc

dec_label_pc_303bc:                               ; preds = %dec_label_pc_303b7, %dec_label_pc_3039b
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_304c0:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv4.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = call ptr @malloc(i32 40)
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store i64 0, ptr %indvars.iv4.reg2mem, align 8
  br i1 %6, label %dec_label_pc_30501, label %dec_label_pc_304ee

dec_label_pc_304ee:                               ; preds = %dec_label_pc_304c0
  call void @exit(i32 -1)
  unreachable

dec_label_pc_30501:                               ; preds = %dec_label_pc_304c0, %dec_label_pc_30501
  %indvars.iv4.reload = load i64, ptr %indvars.iv4.reg2mem, align 8
  %7 = mul i64 %indvars.iv4.reload, 4
  %8 = add i64 %7, %4
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 10
  store i64 %indvars.iv.next5, ptr %indvars.iv4.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_30525, label %dec_label_pc_30501

dec_label_pc_30525:                               ; preds = %dec_label_pc_30501
  %10 = icmp slt i32 %2, 0
  br i1 %10, label %dec_label_pc_30577, label %dec_label_pc_3052b

dec_label_pc_3052b:                               ; preds = %dec_label_pc_30525
  %sext = mul i64 %1, 4294967296
  %11 = ashr exact i64 %sext, 30
  %12 = add i64 %11, %4
  %13 = inttoptr i64 %12 to ptr
  store i32 1, ptr %13, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_3054e

dec_label_pc_3054e:                               ; preds = %dec_label_pc_3054e, %dec_label_pc_3052b
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %14 = mul i64 %indvars.iv.reload, 4
  %15 = add i64 %14, %4
  %16 = inttoptr i64 %15 to ptr
  %17 = load i32, ptr %16, align 4
  call void @printIntLine(i32 %17)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_30586, label %dec_label_pc_3054e

dec_label_pc_30577:                               ; preds = %dec_label_pc_30525
  call void @printLine(ptr @global_var_b5d50)
  br label %dec_label_pc_30586

dec_label_pc_30586:                               ; preds = %dec_label_pc_3054e, %dec_label_pc_30577
  call void @free(ptr %3)
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

