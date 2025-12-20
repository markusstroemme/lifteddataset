@global_var_609e9 = external constant [5 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1b742:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = ptrtoint ptr %stack_var_-8 to i64
  %3 = call i64 @__readfsqword(i64 40)
  %4 = call i64 @_Znam(i64 400)
  %5 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %5, i64 0, i64 100)
  %6 = add i64 %2, -816
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_1b7a0

dec_label_pc_1b7a0:                               ; preds = %dec_label_pc_1b7a0, %dec_label_pc_1b742
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %7 = mul i64 %storemerge1.reload, 8
  %8 = add i64 %7, %4
  %9 = add i64 %6, %7
  %10 = inttoptr i64 %9 to ptr
  %11 = load i64, ptr %10, align 8
  %12 = inttoptr i64 %8 to ptr
  store i64 %11, ptr %12, align 8
  %13 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %13, 100
  store i64 %13, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1b7dd, label %dec_label_pc_1b7a0

dec_label_pc_1b7dd:                               ; preds = %dec_label_pc_1b7a0
  %14 = inttoptr i64 %4 to ptr
  %15 = load i64, ptr %14, align 8
  call void @printLongLongLine(i64 %15)
  %16 = icmp eq i64 %4, 0
  br i1 %16, label %dec_label_pc_1b808, label %dec_label_pc_1b7f9

dec_label_pc_1b7f9:                               ; preds = %dec_label_pc_1b7dd
  %17 = and i64 %1, 4294967295
  %18 = inttoptr i64 %17 to ptr
  call void @_ZdaPv(ptr %14, ptr %18)
  br label %dec_label_pc_1b808

dec_label_pc_1b808:                               ; preds = %dec_label_pc_1b7f9, %dec_label_pc_1b7dd
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %3, %19
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_1b81d, label %dec_label_pc_1b818

dec_label_pc_1b818:                               ; preds = %dec_label_pc_1b808
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1b81d

dec_label_pc_1b81d:                               ; preds = %dec_label_pc_1b818, %dec_label_pc_1b808
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_4da96:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609e9, i32 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

