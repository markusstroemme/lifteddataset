@global_var_30136 = external constant [10 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_10c61:
  %storemerge2.reg2mem = alloca ptr, align 8
  %storemerge13.reg2mem = alloca ptr, align 8
  %stack_var_-1624 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, -816
  %3 = add i64 %0, -812
  store ptr null, ptr %storemerge13.reg2mem, align 8
  br label %dec_label_pc_10cb6

dec_label_pc_10cb6:                               ; preds = %dec_label_pc_10c61, %dec_label_pc_10cb6
  %storemerge13.reload = load ptr, ptr %storemerge13.reg2mem, align 8
  %4 = ptrtoint ptr %storemerge13.reload to i64
  %5 = mul i64 %4, 8
  %6 = add i64 %5, %2
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 8
  %8 = add i64 %3, %5
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %10 = add i64 %4, 1
  %11 = inttoptr i64 %10 to ptr
  %12 = icmp ugt ptr %11, inttoptr (i64 99 to ptr)
  store ptr %11, ptr %storemerge13.reg2mem, align 8
  br i1 %12, label %dec_label_pc_10d2c.preheader, label %dec_label_pc_10cb6

dec_label_pc_10d2c.preheader:                     ; preds = %dec_label_pc_10cb6
  %13 = ptrtoint ptr %stack_var_-1624 to i64
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_10cf9

dec_label_pc_10cf9:                               ; preds = %dec_label_pc_10d2c.preheader, %dec_label_pc_10cf9
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %14 = ptrtoint ptr %storemerge2.reload to i64
  %15 = mul i64 %14, 8
  %16 = add i64 %15, %13
  %17 = add i64 %15, %2
  %18 = inttoptr i64 %17 to ptr
  %19 = load i64, ptr %18, align 8
  %20 = inttoptr i64 %16 to ptr
  store i64 %19, ptr %20, align 8
  %21 = add i64 %14, 1
  %22 = inttoptr i64 %21 to ptr
  %23 = icmp ugt ptr %22, inttoptr (i64 99 to ptr)
  store ptr %22, ptr %storemerge2.reg2mem, align 8
  br i1 %23, label %dec_label_pc_10d36, label %dec_label_pc_10cf9

dec_label_pc_10d36:                               ; preds = %dec_label_pc_10cf9
  %24 = bitcast ptr %stack_var_-1624 to ptr
  call void @printStructLine(ptr nonnull %24)
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %1, %25
  br i1 %26, label %dec_label_pc_10d5a, label %dec_label_pc_10d55

dec_label_pc_10d55:                               ; preds = %dec_label_pc_10d36
  call void @__stack_chk_fail()
  br label %dec_label_pc_10d5a

dec_label_pc_10d5a:                               ; preds = %dec_label_pc_10d55, %dec_label_pc_10d36
  ret void
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_275a6:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_30136, i64 %7, i64 %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

