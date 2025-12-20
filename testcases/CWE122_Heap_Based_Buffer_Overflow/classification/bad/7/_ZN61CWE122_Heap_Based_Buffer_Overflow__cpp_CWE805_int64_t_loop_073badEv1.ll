@global_var_609e9 = external constant [5 x i8]
@0 = external global i32
@global_var_7f02c = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1c4cd:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %stack_var_-840.0.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = load i32, ptr @global_var_7f02c, align 4
  %4 = icmp eq i32 %3, 5
  %5 = icmp eq i1 %4, false
  store i64 0, ptr %stack_var_-840.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_1c512, label %dec_label_pc_1c501

dec_label_pc_1c501:                               ; preds = %dec_label_pc_1c4cd
  %6 = call i64 @_Znam(i64 400)
  store i64 %6, ptr %stack_var_-840.0.reg2mem, align 8
  br label %dec_label_pc_1c512

dec_label_pc_1c512:                               ; preds = %dec_label_pc_1c501, %dec_label_pc_1c4cd
  %7 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-840.0.reload = load i64, ptr %stack_var_-840.0.reg2mem, align 8
  %8 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %8, i64 0, i64 100)
  %9 = add i64 %7, -816
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_1c536

dec_label_pc_1c536:                               ; preds = %dec_label_pc_1c536, %dec_label_pc_1c512
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %10 = mul i64 %storemerge1.reload, 8
  %11 = add i64 %10, %stack_var_-840.0.reload
  %12 = add i64 %9, %10
  %13 = inttoptr i64 %12 to ptr
  %14 = load i64, ptr %13, align 8
  %15 = inttoptr i64 %11 to ptr
  store i64 %14, ptr %15, align 8
  %16 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %16, 100
  store i64 %16, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1c573, label %dec_label_pc_1c536

dec_label_pc_1c573:                               ; preds = %dec_label_pc_1c536
  %17 = inttoptr i64 %stack_var_-840.0.reload to ptr
  %18 = load i64, ptr %17, align 8
  call void @printLongLongLine(i64 %18)
  %19 = icmp eq i64 %stack_var_-840.0.reload, 0
  br i1 %19, label %dec_label_pc_1c59e, label %dec_label_pc_1c58f

dec_label_pc_1c58f:                               ; preds = %dec_label_pc_1c573
  %20 = and i64 %1, 4294967295
  %21 = inttoptr i64 %20 to ptr
  call void @_ZdaPv(ptr %17, ptr %21)
  br label %dec_label_pc_1c59e

dec_label_pc_1c59e:                               ; preds = %dec_label_pc_1c58f, %dec_label_pc_1c573
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %2, %22
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %23, label %dec_label_pc_1c5b3, label %dec_label_pc_1c5ae

dec_label_pc_1c5ae:                               ; preds = %dec_label_pc_1c59e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1c5b3

dec_label_pc_1c5b3:                               ; preds = %dec_label_pc_1c5ae, %dec_label_pc_1c59e
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

