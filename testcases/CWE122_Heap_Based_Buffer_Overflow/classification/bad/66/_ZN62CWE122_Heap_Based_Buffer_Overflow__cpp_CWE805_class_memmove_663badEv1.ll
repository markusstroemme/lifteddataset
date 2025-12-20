@global_var_320 = external constant [20 x i8]
@global_var_609dc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_195d8:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 400)
  %2 = bitcast ptr %stack_var_-56 to ptr
  %3 = call i64 @anon1(ptr nonnull %2)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_19632, label %dec_label_pc_1962d

dec_label_pc_1962d:                               ; preds = %dec_label_pc_195d8
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_19632

dec_label_pc_19632:                               ; preds = %dec_label_pc_1962d, %dec_label_pc_195d8
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_196a0:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %arg1 to i64
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %1 = ptrtoint ptr %stack_var_-8 to i64
  %2 = call i64 @__readfsqword(i64 40)
  %3 = add i64 %0, 16
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_196e4

dec_label_pc_196e4:                               ; preds = %dec_label_pc_196e4, %dec_label_pc_196a0
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %6 = mul i64 %storemerge1.reload, 8
  %7 = add i64 %6, %1
  %8 = add i64 %7, -816
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 8
  %10 = add i64 %7, -812
  %11 = inttoptr i64 %10 to ptr
  store i32 0, ptr %11, align 4
  %12 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %12, 100
  store i64 %12, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1971a, label %dec_label_pc_196e4

dec_label_pc_1971a:                               ; preds = %dec_label_pc_196e4
  %13 = inttoptr i64 %5 to ptr
  %14 = call ptr @memmove(ptr %13, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %15 = inttoptr i64 %5 to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  %17 = icmp eq i64 %5, 0
  br i1 %17, label %dec_label_pc_19761, label %dec_label_pc_19752

dec_label_pc_19752:                               ; preds = %dec_label_pc_1971a
  %18 = ptrtoint ptr %stack_var_-824 to i64
  %19 = and i64 %18, 4294967288
  %20 = inttoptr i64 %19 to ptr
  call void @_ZdaPv(ptr %13, ptr %20)
  br label %dec_label_pc_19761

dec_label_pc_19761:                               ; preds = %dec_label_pc_19752, %dec_label_pc_1971a
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %2, %21
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %22, label %dec_label_pc_19776, label %dec_label_pc_19771

dec_label_pc_19771:                               ; preds = %dec_label_pc_19761
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_19776

dec_label_pc_19776:                               ; preds = %dec_label_pc_19771, %dec_label_pc_19761
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_4d9d3:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609dc, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

