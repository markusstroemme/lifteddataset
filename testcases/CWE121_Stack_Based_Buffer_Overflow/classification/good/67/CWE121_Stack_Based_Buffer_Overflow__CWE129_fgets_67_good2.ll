@global_var_b5ef4 = external constant [16 x i8]
@global_var_b5f28 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_1fd94:
  %stack_var_-36.0.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_ef090, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_1fdf9, label %dec_label_pc_1fde8

dec_label_pc_1fde8:                               ; preds = %dec_label_pc_1fd94
  %5 = call i32 @atoi(ptr nonnull %2)
  %phitmp = zext i32 %5 to i64
  store i64 %phitmp, ptr %stack_var_-36.0.reg2mem, align 8
  br label %dec_label_pc_1fe08

dec_label_pc_1fdf9:                               ; preds = %dec_label_pc_1fd94
  call void @printLine(ptr @global_var_b5ef4)
  store i64 4294967295, ptr %stack_var_-36.0.reg2mem, align 8
  br label %dec_label_pc_1fe08

dec_label_pc_1fe08:                               ; preds = %dec_label_pc_1fdf9, %dec_label_pc_1fde8
  %stack_var_-36.0.reload = load i64, ptr %stack_var_-36.0.reg2mem, align 8
  call void @anon0(i64 %stack_var_-36.0.reload)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_1fe2d, label %dec_label_pc_1fe28

dec_label_pc_1fe28:                               ; preds = %dec_label_pc_1fe08
  call void @__stack_chk_fail()
  br label %dec_label_pc_1fe2d

dec_label_pc_1fe2d:                               ; preds = %dec_label_pc_1fe28, %dec_label_pc_1fe08
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_1ffa2:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = trunc i64 %myStruct to i32
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp ugt i32 %0, 9
  br i1 %2, label %dec_label_pc_2002c, label %dec_label_pc_1fffa

dec_label_pc_1fffa:                               ; preds = %dec_label_pc_1ffa2
  %sext = mul i64 %myStruct, 4294967296
  %3 = ptrtoint ptr %stack_var_-8 to i64
  %4 = ashr exact i64 %sext, 30
  %5 = add i64 %3, -48
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 1, ptr %7, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_20010

dec_label_pc_20010:                               ; preds = %dec_label_pc_20010, %dec_label_pc_1fffa
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %8 = mul i64 %indvars.iv.reload, 4
  %9 = add i64 %8, %5
  %10 = inttoptr i64 %9 to ptr
  %11 = load i32, ptr %10, align 4
  call void @printIntLine(i32 %11)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2003b, label %dec_label_pc_20010

dec_label_pc_2002c:                               ; preds = %dec_label_pc_1ffa2
  call void @printLine(ptr @global_var_b5f28)
  br label %dec_label_pc_2003b

dec_label_pc_2003b:                               ; preds = %dec_label_pc_20010, %dec_label_pc_2002c
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %1, %12
  br i1 %13, label %dec_label_pc_20050, label %dec_label_pc_2004b

dec_label_pc_2004b:                               ; preds = %dec_label_pc_2003b
  call void @__stack_chk_fail()
  br label %dec_label_pc_20050

dec_label_pc_20050:                               ; preds = %dec_label_pc_2004b, %dec_label_pc_2003b
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

