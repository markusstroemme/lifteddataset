@global_var_531bc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3ae19:
  %0 = call i64 @_Znam(i64 400)
  %1 = inttoptr i64 %0 to ptr
  %2 = call i64 @anon1(ptr %1)
  ret i64 %2
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_3ae8b:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %storemerge13.reg2mem = alloca i64, align 8
  %rdi = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = ptrtoint ptr %stack_var_-8 to i64
  %3 = call i64 @__readfsqword(i64 40)
  %4 = add i64 %2, -816
  %5 = add i64 %2, -812
  store i64 0, ptr %storemerge13.reg2mem, align 8
  br label %dec_label_pc_3aebd

dec_label_pc_3aebd:                               ; preds = %dec_label_pc_3aebd, %dec_label_pc_3ae8b
  %storemerge13.reload = load i64, ptr %storemerge13.reg2mem, align 8
  %6 = mul i64 %storemerge13.reload, 8
  %7 = add i64 %6, %4
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 8
  %9 = add i64 %5, %6
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 4
  %11 = add nuw nsw i64 %storemerge13.reload, 1
  %exitcond4 = icmp eq i64 %11, 100
  store i64 %11, ptr %storemerge13.reg2mem, align 8
  br i1 %exitcond4, label %dec_label_pc_3af33.preheader, label %dec_label_pc_3aebd

dec_label_pc_3af33.preheader:                     ; preds = %dec_label_pc_3aebd
  %12 = ptrtoint ptr %arg1 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_3af00

dec_label_pc_3af00:                               ; preds = %dec_label_pc_3af00, %dec_label_pc_3af33.preheader
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %13 = mul i64 %storemerge2.reload, 8
  %14 = add i64 %13, %12
  %15 = add i64 %13, %4
  %16 = inttoptr i64 %15 to ptr
  %17 = load i64, ptr %16, align 8
  %18 = inttoptr i64 %14 to ptr
  store i64 %17, ptr %18, align 8
  %19 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %19, 100
  store i64 %19, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3af3d, label %dec_label_pc_3af00

dec_label_pc_3af3d:                               ; preds = %dec_label_pc_3af00
  %20 = bitcast ptr %rdi to ptr
  %21 = load i32, ptr %20, align 8
  call void @printIntLine(i32 %21)
  %22 = icmp eq ptr %arg1, null
  br i1 %22, label %dec_label_pc_3af66, label %dec_label_pc_3af57

dec_label_pc_3af57:                               ; preds = %dec_label_pc_3af3d
  %23 = and i64 %1, 4294967295
  %24 = inttoptr i64 %23 to ptr
  call void @_ZdaPv(ptr nonnull %arg1, ptr %24)
  br label %dec_label_pc_3af66

dec_label_pc_3af66:                               ; preds = %dec_label_pc_3af57, %dec_label_pc_3af3d
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %3, %25
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %26, label %dec_label_pc_3af7b, label %dec_label_pc_3af76

dec_label_pc_3af76:                               ; preds = %dec_label_pc_3af66
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3af7b

dec_label_pc_3af7b:                               ; preds = %dec_label_pc_3af76, %dec_label_pc_3af66
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_42e9b:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_531bc, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

