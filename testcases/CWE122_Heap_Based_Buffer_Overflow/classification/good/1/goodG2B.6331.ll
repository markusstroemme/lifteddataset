@global_var_7c84a = external constant [10 x i8]
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3afcb:
  %storemerge2.reg2mem = alloca ptr, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %3 = bitcast ptr %2 to ptr
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br i1 %5, label %dec_label_pc_3b026, label %dec_label_pc_3b00f

dec_label_pc_3b00f:                               ; preds = %dec_label_pc_3afcb
  call void @exit(i32 -1)
  unreachable

dec_label_pc_3b026:                               ; preds = %dec_label_pc_3afcb, %dec_label_pc_3b026
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
  br i1 %15, label %dec_label_pc_3b05c, label %dec_label_pc_3b026

dec_label_pc_3b05c:                               ; preds = %dec_label_pc_3b026
  %16 = call ptr @memmove(ptr %2, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  call void @printStructLine(ptr %3)
  call void @free(ptr %2)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %1, %17
  br i1 %18, label %dec_label_pc_3b0ad, label %dec_label_pc_3b0a8

dec_label_pc_3b0a8:                               ; preds = %dec_label_pc_3b05c
  call void @__stack_chk_fail()
  br label %dec_label_pc_3b0ad

dec_label_pc_3b0ad:                               ; preds = %dec_label_pc_3b0a8, %dec_label_pc_3b05c
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

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

