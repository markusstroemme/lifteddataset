@global_var_30136 = external constant [10 x i8]
@global_var_320 = external constant i32

define void @anon1() local_unnamed_addr {
dec_label_pc_177a7:
  %stack_var_-872 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-872 to ptr
  call void @anon0(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_17805, label %dec_label_pc_17800

dec_label_pc_17800:                               ; preds = %dec_label_pc_177a7
  call void @__stack_chk_fail()
  br label %dec_label_pc_17805

dec_label_pc_17805:                               ; preds = %dec_label_pc_17800, %dec_label_pc_177a7
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_178da:
  %storemerge2.reg2mem = alloca ptr, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = ptrtoint ptr %dataArray to i64
  %3 = add i64 %2, 16
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_1791e

dec_label_pc_1791e:                               ; preds = %dec_label_pc_178da, %dec_label_pc_1791e
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %6 = ptrtoint ptr %storemerge2.reload to i64
  %7 = mul i64 %6, 8
  %8 = add i64 %7, %0
  %9 = add i64 %8, -816
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 8
  %11 = add i64 %8, -812
  %12 = inttoptr i64 %11 to ptr
  store i32 0, ptr %12, align 4
  %13 = add i64 %6, 1
  %14 = inttoptr i64 %13 to ptr
  %15 = icmp ugt ptr %14, inttoptr (i64 99 to ptr)
  store ptr %14, ptr %storemerge2.reg2mem, align 8
  br i1 %15, label %dec_label_pc_17954, label %dec_label_pc_1791e

dec_label_pc_17954:                               ; preds = %dec_label_pc_1791e
  %16 = inttoptr i64 %5 to ptr
  %17 = inttoptr i64 %5 to ptr
  %18 = call ptr @memcpy(ptr %17, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  call void @printStructLine(ptr %16)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %1, %19
  br i1 %20, label %dec_label_pc_17996, label %dec_label_pc_17991

dec_label_pc_17991:                               ; preds = %dec_label_pc_17954
  call void @__stack_chk_fail()
  br label %dec_label_pc_17996

dec_label_pc_17996:                               ; preds = %dec_label_pc_17991, %dec_label_pc_17954
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

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

