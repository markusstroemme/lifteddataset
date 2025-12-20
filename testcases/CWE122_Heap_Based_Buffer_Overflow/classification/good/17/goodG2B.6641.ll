@global_var_7c84a = external constant [10 x i8]
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3dc7f:
  %storemerge4.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  store i64 0, ptr %storemerge4.reg2mem, align 8
  br i1 %4, label %dec_label_pc_3dcc1, label %dec_label_pc_3dc9a

dec_label_pc_3dc9a:                               ; preds = %dec_label_pc_3dc7f
  call void @exit(i32 -1)
  unreachable

dec_label_pc_3dcc1:                               ; preds = %dec_label_pc_3dc7f, %dec_label_pc_3dcc1
  %storemerge4.reload = load i64, ptr %storemerge4.reg2mem, align 8
  %5 = mul i64 %storemerge4.reload, 8
  %6 = add i64 %5, %0
  %7 = add i64 %6, -816
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 8
  %9 = add i64 %6, -812
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 4
  %11 = add nuw nsw i64 %storemerge4.reload, 1
  %exitcond = icmp eq i64 %11, 100
  store i64 %11, ptr %storemerge4.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3dcf7, label %dec_label_pc_3dcc1

dec_label_pc_3dcf7:                               ; preds = %dec_label_pc_3dcc1
  %12 = bitcast ptr %2 to ptr
  %13 = call ptr @memmove(ptr %2, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  call void @printStructLine(ptr %12)
  call void @free(ptr %2)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %1, %14
  br i1 %15, label %dec_label_pc_3dd48, label %dec_label_pc_3dd43

dec_label_pc_3dd43:                               ; preds = %dec_label_pc_3dcf7
  call void @__stack_chk_fail()
  br label %dec_label_pc_3dd48

dec_label_pc_3dd48:                               ; preds = %dec_label_pc_3dd43, %dec_label_pc_3dcf7
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

