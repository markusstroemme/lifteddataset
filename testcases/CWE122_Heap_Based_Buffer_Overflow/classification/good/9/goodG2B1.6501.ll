@global_var_7c84a = external constant [10 x i8]
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3c654:
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %3 = bitcast ptr %2 to ptr
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br i1 %5, label %dec_label_pc_3c6ca, label %dec_label_pc_3c6b3

dec_label_pc_3c6b3:                               ; preds = %dec_label_pc_3c654
  call void @exit(i32 -1)
  unreachable

dec_label_pc_3c6ca:                               ; preds = %dec_label_pc_3c654, %dec_label_pc_3c6ca
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %6 = mul i64 %storemerge2.reload, 8
  %7 = add i64 %6, %0
  %8 = add i64 %7, -816
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 8
  %10 = add i64 %7, -812
  %11 = inttoptr i64 %10 to ptr
  store i32 0, ptr %11, align 4
  %12 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %12, 100
  store i64 %12, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3c700, label %dec_label_pc_3c6ca

dec_label_pc_3c700:                               ; preds = %dec_label_pc_3c6ca
  %13 = call ptr @memmove(ptr %2, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  call void @printStructLine(ptr %3)
  call void @free(ptr %2)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %1, %14
  br i1 %15, label %dec_label_pc_3c751, label %dec_label_pc_3c74c

dec_label_pc_3c74c:                               ; preds = %dec_label_pc_3c700
  call void @__stack_chk_fail()
  br label %dec_label_pc_3c751

dec_label_pc_3c751:                               ; preds = %dec_label_pc_3c74c, %dec_label_pc_3c700
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

