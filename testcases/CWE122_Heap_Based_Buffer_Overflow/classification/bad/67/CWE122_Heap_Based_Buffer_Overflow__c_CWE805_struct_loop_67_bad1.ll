@global_var_7c84a = external constant [10 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_3492a:
  %0 = call ptr @malloc(i32 400)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_3495d, label %dec_label_pc_34953

dec_label_pc_34953:                               ; preds = %dec_label_pc_3492a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_3495d:                               ; preds = %dec_label_pc_3492a
  %3 = ptrtoint ptr %0 to i64
  call void @anon1(i64 %3)
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_349d3:
  %storemerge2.reg2mem = alloca ptr, align 8
  %storemerge13.reg2mem = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, -816
  %3 = add i64 %0, -812
  store ptr null, ptr %storemerge13.reg2mem, align 8
  br label %dec_label_pc_34a13

dec_label_pc_34a13:                               ; preds = %dec_label_pc_349d3, %dec_label_pc_34a13
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
  br i1 %12, label %dec_label_pc_34a56, label %dec_label_pc_34a13

dec_label_pc_34a56:                               ; preds = %dec_label_pc_34a13, %dec_label_pc_34a56
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
  br i1 %22, label %dec_label_pc_34a93, label %dec_label_pc_34a56

dec_label_pc_34a93:                               ; preds = %dec_label_pc_34a56
  %23 = inttoptr i64 %myStruct to ptr
  call void @printStructLine(ptr %23)
  %24 = inttoptr i64 %myStruct to ptr
  call void @free(ptr %24)
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %1, %25
  br i1 %26, label %dec_label_pc_34ac6, label %dec_label_pc_34ac1

dec_label_pc_34ac1:                               ; preds = %dec_label_pc_34a93
  call void @__stack_chk_fail()
  br label %dec_label_pc_34ac6

dec_label_pc_34ac6:                               ; preds = %dec_label_pc_34ac1, %dec_label_pc_34a93
  ret void
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_65a35:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_7c84a, i64 %7, i64 %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

