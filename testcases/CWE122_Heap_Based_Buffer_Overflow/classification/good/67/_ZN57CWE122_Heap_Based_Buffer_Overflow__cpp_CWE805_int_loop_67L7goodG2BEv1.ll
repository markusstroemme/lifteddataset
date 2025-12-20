@global_var_609dc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3a6ec:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 400)
  %2 = call i64 @anon1(i64 %1)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_3a746, label %dec_label_pc_3a741

dec_label_pc_3a741:                               ; preds = %dec_label_pc_3a6ec
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3a746

dec_label_pc_3a746:                               ; preds = %dec_label_pc_3a741, %dec_label_pc_3a6ec
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_3a82a:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %rdi = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = ptrtoint ptr %stack_var_-8 to i64
  %3 = call i64 @__readfsqword(i64 40)
  %4 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %4, i64 0, i64 50)
  %5 = add i64 %2, -416
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_3a881

dec_label_pc_3a881:                               ; preds = %dec_label_pc_3a881, %dec_label_pc_3a82a
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %6 = mul i64 %storemerge1.reload, 4
  %7 = add i64 %6, %arg1
  %8 = add i64 %5, %6
  %9 = inttoptr i64 %8 to ptr
  %10 = load i32, ptr %9, align 4
  %11 = inttoptr i64 %7 to ptr
  store i32 %10, ptr %11, align 4
  %12 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %12, 100
  store i64 %12, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3a8bc, label %dec_label_pc_3a881

dec_label_pc_3a8bc:                               ; preds = %dec_label_pc_3a881
  %13 = bitcast ptr %rdi to ptr
  %14 = load i32, ptr %13, align 8
  call void @printIntLine(i32 %14)
  %15 = icmp eq i64 %arg1, 0
  br i1 %15, label %dec_label_pc_3a8e5, label %dec_label_pc_3a8d6

dec_label_pc_3a8d6:                               ; preds = %dec_label_pc_3a8bc
  %16 = inttoptr i64 %arg1 to ptr
  %17 = and i64 %1, 4294967295
  %18 = inttoptr i64 %17 to ptr
  call void @_ZdaPv(ptr %16, ptr %18)
  br label %dec_label_pc_3a8e5

dec_label_pc_3a8e5:                               ; preds = %dec_label_pc_3a8d6, %dec_label_pc_3a8bc
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %3, %19
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_3a8fa, label %dec_label_pc_3a8f5

dec_label_pc_3a8f5:                               ; preds = %dec_label_pc_3a8e5
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3a8fa

dec_label_pc_3a8fa:                               ; preds = %dec_label_pc_3a8f5, %dec_label_pc_3a8e5
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

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

