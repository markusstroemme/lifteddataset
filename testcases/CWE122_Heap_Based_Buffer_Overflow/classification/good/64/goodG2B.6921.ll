@global_var_7c84a = external constant [10 x i8]
@global_var_320 = external constant i32

define void @anon1() local_unnamed_addr {
dec_label_pc_40440:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_40484, label %dec_label_pc_4047a

dec_label_pc_4047a:                               ; preds = %dec_label_pc_40440
  call void @exit(i32 -1)
  unreachable

dec_label_pc_40484:                               ; preds = %dec_label_pc_40440
  %5 = bitcast ptr %stack_var_-24 to ptr
  call void @anon0(ptr nonnull %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_404a5, label %dec_label_pc_404a0

dec_label_pc_404a0:                               ; preds = %dec_label_pc_40484
  call void @__stack_chk_fail()
  br label %dec_label_pc_404a5

dec_label_pc_404a5:                               ; preds = %dec_label_pc_404a0, %dec_label_pc_40484
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_40596:
  %storemerge2.reg2mem = alloca ptr, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_405e7

dec_label_pc_405e7:                               ; preds = %dec_label_pc_40596, %dec_label_pc_405e7
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %2 = ptrtoint ptr %storemerge2.reload to i64
  %3 = mul i64 %2, 8
  %4 = add i64 %3, %0
  %5 = add i64 %4, -816
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 8
  %7 = add i64 %4, -812
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 4
  %9 = add i64 %2, 1
  %10 = inttoptr i64 %9 to ptr
  %11 = icmp ugt ptr %10, inttoptr (i64 99 to ptr)
  store ptr %10, ptr %storemerge2.reg2mem, align 8
  br i1 %11, label %dec_label_pc_4061d, label %dec_label_pc_405e7

dec_label_pc_4061d:                               ; preds = %dec_label_pc_405e7
  %12 = bitcast ptr %dataVoidPtr to ptr
  %13 = call ptr @memmove(ptr %12, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %14 = bitcast ptr %dataVoidPtr to ptr
  call void @printStructLine(ptr %14)
  call void @free(ptr %12)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %1, %15
  br i1 %16, label %dec_label_pc_4066e, label %dec_label_pc_40669

dec_label_pc_40669:                               ; preds = %dec_label_pc_4061d
  call void @__stack_chk_fail()
  br label %dec_label_pc_4066e

dec_label_pc_4066e:                               ; preds = %dec_label_pc_40669, %dec_label_pc_4061d
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

