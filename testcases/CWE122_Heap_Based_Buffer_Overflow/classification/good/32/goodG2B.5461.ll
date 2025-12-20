@global_var_7c84a = external constant [10 x i8]
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_322a8:
  %storemerge3.reg2mem = alloca ptr, align 8
  %storemerge24.reg2mem = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_32323, label %dec_label_pc_32319

dec_label_pc_32319:                               ; preds = %dec_label_pc_322a8
  call void @exit(i32 -1)
  unreachable

dec_label_pc_32323:                               ; preds = %dec_label_pc_322a8
  %4 = ptrtoint ptr %stack_var_-8 to i64
  %5 = add i64 %4, -816
  %6 = add i64 %4, -812
  store ptr null, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_32352

dec_label_pc_32352:                               ; preds = %dec_label_pc_32323, %dec_label_pc_32352
  %storemerge24.reload = load ptr, ptr %storemerge24.reg2mem, align 8
  %7 = ptrtoint ptr %storemerge24.reload to i64
  %8 = mul i64 %7, 8
  %9 = add i64 %8, %5
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 8
  %11 = add i64 %6, %8
  %12 = inttoptr i64 %11 to ptr
  store i32 0, ptr %12, align 4
  %13 = add i64 %7, 1
  %14 = inttoptr i64 %13 to ptr
  %15 = icmp ugt ptr %14, inttoptr (i64 99 to ptr)
  store ptr %14, ptr %storemerge24.reg2mem, align 8
  br i1 %15, label %dec_label_pc_323c8.preheader, label %dec_label_pc_32352

dec_label_pc_323c8.preheader:                     ; preds = %dec_label_pc_32352
  %16 = ptrtoint ptr %1 to i64
  store ptr null, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_32395

dec_label_pc_32395:                               ; preds = %dec_label_pc_323c8.preheader, %dec_label_pc_32395
  %storemerge3.reload = load ptr, ptr %storemerge3.reg2mem, align 8
  %17 = ptrtoint ptr %storemerge3.reload to i64
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = add i64 %18, %5
  %21 = inttoptr i64 %20 to ptr
  %22 = load i64, ptr %21, align 8
  %23 = inttoptr i64 %19 to ptr
  store i64 %22, ptr %23, align 8
  %24 = add i64 %17, 1
  %25 = inttoptr i64 %24 to ptr
  %26 = icmp ugt ptr %25, inttoptr (i64 99 to ptr)
  store ptr %25, ptr %storemerge3.reg2mem, align 8
  br i1 %26, label %dec_label_pc_323d2, label %dec_label_pc_32395

dec_label_pc_323d2:                               ; preds = %dec_label_pc_32395
  %27 = bitcast ptr %1 to ptr
  call void @printStructLine(ptr %27)
  call void @free(ptr %1)
  %28 = call i64 @__readfsqword(i64 40)
  %29 = icmp eq i64 %0, %28
  br i1 %29, label %dec_label_pc_32405, label %dec_label_pc_32400

dec_label_pc_32400:                               ; preds = %dec_label_pc_323d2
  call void @__stack_chk_fail()
  br label %dec_label_pc_32405

dec_label_pc_32405:                               ; preds = %dec_label_pc_32400, %dec_label_pc_323d2
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

