@global_var_4a944 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_24d05:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge12.reg2mem = alloca i64, align 8
  %storemerge3.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  %6 = call i64 @_Znam(i64 400)
  store i64 0, ptr %storemerge3.reg2mem, align 8
  store i64 0, ptr %storemerge12.reg2mem, align 8
  br i1 %5, label %dec_label_pc_24d91, label %dec_label_pc_24d3f

dec_label_pc_24d3f:                               ; preds = %dec_label_pc_24d05, %dec_label_pc_24d3f
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %7 = mul i64 %storemerge3.reload, 4
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 5, ptr %9, align 4
  %10 = add nuw nsw i64 %storemerge3.reload, 1
  %exitcond4 = icmp eq i64 %10, 100
  store i64 %10, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond4, label %dec_label_pc_24d64, label %dec_label_pc_24d3f

dec_label_pc_24d64:                               ; preds = %dec_label_pc_24d3f
  %11 = icmp eq i64 %6, 0
  br i1 %11, label %dec_label_pc_24db6, label %dec_label_pc_24d6b

dec_label_pc_24d6b:                               ; preds = %dec_label_pc_24d64
  %12 = inttoptr i64 %6 to ptr
  %13 = and i64 %1, 4294967295
  %14 = inttoptr i64 %13 to ptr
  call void @_ZdaPv(ptr %12, ptr %14)
  br label %dec_label_pc_24db6

dec_label_pc_24d91:                               ; preds = %dec_label_pc_24d05, %dec_label_pc_24d91
  %storemerge12.reload = load i64, ptr %storemerge12.reg2mem, align 8
  %15 = mul i64 %storemerge12.reload, 4
  %16 = add i64 %15, %6
  %17 = inttoptr i64 %16 to ptr
  store i32 5, ptr %17, align 4
  %18 = add nuw nsw i64 %storemerge12.reload, 1
  %exitcond = icmp eq i64 %18, 100
  store i64 %18, ptr %storemerge12.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_24db6, label %dec_label_pc_24d91

dec_label_pc_24db6:                               ; preds = %dec_label_pc_24d91, %dec_label_pc_24d6b, %dec_label_pc_24d64
  %19 = call i32 @globalReturnsTrueOrFalse()
  %20 = icmp eq i32 %19, 0
  %21 = icmp eq i1 %20, false
  %22 = zext i1 %21 to i64
  %23 = and i32 %19, -256
  %24 = sext i32 %23 to i64
  %25 = or i64 %22, %24
  %26 = icmp eq i1 %21, false
  store i64 %25, ptr %rax.0.reg2mem, align 8
  br i1 %26, label %dec_label_pc_24dd1, label %dec_label_pc_24dc4

dec_label_pc_24dc4:                               ; preds = %dec_label_pc_24db6
  %27 = inttoptr i64 %6 to ptr
  %28 = load i32, ptr %27, align 4
  call void @printIntLine(i32 %28)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_24dd1

dec_label_pc_24dd1:                               ; preds = %dec_label_pc_24dc4, %dec_label_pc_24db6
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3b862:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a944, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_3bd35:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

