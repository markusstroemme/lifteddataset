@global_var_320 = external constant [20 x i8]
@global_var_4a96e = external constant [10 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_15447:
  %storemerge1.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-32, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  store i64 %2, ptr %.reg2mem, align 8
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br i1 %4, label %dec_label_pc_15495, label %dec_label_pc_15481

dec_label_pc_15481:                               ; preds = %dec_label_pc_15447
  call void @exit(i32 -1)
  unreachable

dec_label_pc_15495:                               ; preds = %dec_label_pc_15447, %dec_label_pc_15495
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %.reload = load i64, ptr %.reg2mem, align 8
  %5 = mul i64 %storemerge1.reload, 8
  %6 = add i64 %5, %.reload
  %7 = inttoptr i64 %6 to ptr
  store i32 1, ptr %7, align 4
  %8 = load i64, ptr %stack_var_-32, align 8
  %9 = or i64 %5, 4
  %10 = add i64 %9, %8
  %11 = inttoptr i64 %10 to ptr
  store i32 2, ptr %11, align 4
  %12 = add nuw nsw i64 %storemerge1.reload, 1
  %13 = load i64, ptr %stack_var_-32, align 8
  %exitcond = icmp eq i64 %12, 100
  store i64 %13, ptr %.reg2mem, align 8
  store i64 %12, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_154cc, label %dec_label_pc_15495

dec_label_pc_154cc:                               ; preds = %dec_label_pc_15495
  %14 = inttoptr i64 %13 to ptr
  call void @free(ptr %14)
  %15 = bitcast ptr %stack_var_-32 to ptr
  call void @anon1(ptr nonnull %15)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  br i1 %17, label %dec_label_pc_154f9, label %dec_label_pc_154f4

dec_label_pc_154f4:                               ; preds = %dec_label_pc_154cc
  call void @__stack_chk_fail()
  br label %dec_label_pc_154f9

dec_label_pc_154f9:                               ; preds = %dec_label_pc_154f4, %dec_label_pc_154cc
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_15676:
  %0 = bitcast ptr %dataPtr to ptr
  call void @printStructLine(ptr %0)
  ret void
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_3ba96:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_4a96e, i64 %7, i64 %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

