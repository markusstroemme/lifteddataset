@global_var_30136 = external constant [10 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_12f4c:
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-824 to i64
  call void @anon0(i64 %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_12faa, label %dec_label_pc_12fa5

dec_label_pc_12fa5:                               ; preds = %dec_label_pc_12f4c
  call void @__stack_chk_fail()
  br label %dec_label_pc_12faa

dec_label_pc_12faa:                               ; preds = %dec_label_pc_12fa5, %dec_label_pc_12f4c
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_130a7:
  %storemerge2.reg2mem = alloca ptr, align 8
  %storemerge13.reg2mem = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, -816
  %3 = add i64 %0, -812
  store ptr null, ptr %storemerge13.reg2mem, align 8
  br label %dec_label_pc_130e7

dec_label_pc_130e7:                               ; preds = %dec_label_pc_130a7, %dec_label_pc_130e7
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
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br i1 %12, label %dec_label_pc_1312a, label %dec_label_pc_130e7

dec_label_pc_1312a:                               ; preds = %dec_label_pc_130e7, %dec_label_pc_1312a
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %13 = ptrtoint ptr %storemerge2.reload to i64
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %myStruct
  %16 = add i64 %14, %2
  %17 = inttoptr i64 %16 to ptr
  %18 = load i64, ptr %17, align 8
  %19 = inttoptr i64 %15 to ptr
  store i64 %18, ptr %19, align 8
  %20 = add i64 %13, 1
  %21 = inttoptr i64 %20 to ptr
  %22 = icmp ugt ptr %21, inttoptr (i64 99 to ptr)
  store ptr %21, ptr %storemerge2.reg2mem, align 8
  br i1 %22, label %dec_label_pc_13167, label %dec_label_pc_1312a

dec_label_pc_13167:                               ; preds = %dec_label_pc_1312a
  %23 = inttoptr i64 %myStruct to ptr
  call void @printStructLine(ptr %23)
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %1, %24
  br i1 %25, label %dec_label_pc_1318b, label %dec_label_pc_13186

dec_label_pc_13186:                               ; preds = %dec_label_pc_13167
  call void @__stack_chk_fail()
  br label %dec_label_pc_1318b

dec_label_pc_1318b:                               ; preds = %dec_label_pc_13186, %dec_label_pc_13167
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

