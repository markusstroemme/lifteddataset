@global_var_7c84a = external constant [10 x i8]
@global_var_320 = external constant i32

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_3ecf7:
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_3ed29

dec_label_pc_3ed29:                               ; preds = %dec_label_pc_3ed29, %dec_label_pc_3ecf7
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %2 = mul i64 %storemerge2.reload, 8
  %3 = add i64 %2, %0
  %4 = add i64 %3, -816
  %5 = inttoptr i64 %4 to ptr
  store i32 0, ptr %5, align 8
  %6 = add i64 %3, -812
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  %8 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %8, 100
  store i64 %8, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3ed5f, label %dec_label_pc_3ed29

dec_label_pc_3ed5f:                               ; preds = %dec_label_pc_3ed29
  %9 = bitcast ptr %data to ptr
  %10 = call ptr @memmove(ptr %9, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  call void @printStructLine(ptr %data)
  call void @free(ptr %9)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %1, %11
  br i1 %12, label %dec_label_pc_3edb0, label %dec_label_pc_3edab

dec_label_pc_3edab:                               ; preds = %dec_label_pc_3ed5f
  call void @__stack_chk_fail()
  br label %dec_label_pc_3edb0

dec_label_pc_3edb0:                               ; preds = %dec_label_pc_3edab, %dec_label_pc_3ed5f
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_3edb2:
  %0 = call ptr @malloc(i32 400)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_3ede5, label %dec_label_pc_3eddb

dec_label_pc_3eddb:                               ; preds = %dec_label_pc_3edb2
  call void @exit(i32 -1)
  unreachable

dec_label_pc_3ede5:                               ; preds = %dec_label_pc_3edb2
  %3 = bitcast ptr %0 to ptr
  call void @anon0(ptr %3)
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

