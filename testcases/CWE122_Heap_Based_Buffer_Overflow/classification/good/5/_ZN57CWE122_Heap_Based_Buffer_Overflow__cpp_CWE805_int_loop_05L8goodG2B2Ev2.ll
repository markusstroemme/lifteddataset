@global_var_609dc = external constant [4 x i8]
@0 = external global i32
@global_var_7f040 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_354ad:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %stack_var_-440.0.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = load i32, ptr @global_var_7f040, align 4
  %4 = icmp eq i32 %3, 0
  store i64 0, ptr %stack_var_-440.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_354f1, label %dec_label_pc_354e0

dec_label_pc_354e0:                               ; preds = %dec_label_pc_354ad
  %5 = call i64 @_Znam(i64 400)
  store i64 %5, ptr %stack_var_-440.0.reg2mem, align 8
  br label %dec_label_pc_354f1

dec_label_pc_354f1:                               ; preds = %dec_label_pc_354e0, %dec_label_pc_354ad
  %6 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-440.0.reload = load i64, ptr %stack_var_-440.0.reg2mem, align 8
  %7 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %7, i64 0, i64 50)
  %8 = add i64 %6, -416
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_35515

dec_label_pc_35515:                               ; preds = %dec_label_pc_35515, %dec_label_pc_354f1
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %9 = mul i64 %storemerge1.reload, 4
  %10 = add i64 %9, %stack_var_-440.0.reload
  %11 = add i64 %8, %9
  %12 = inttoptr i64 %11 to ptr
  %13 = load i32, ptr %12, align 4
  %14 = inttoptr i64 %10 to ptr
  store i32 %13, ptr %14, align 4
  %15 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %15, 100
  store i64 %15, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_35550, label %dec_label_pc_35515

dec_label_pc_35550:                               ; preds = %dec_label_pc_35515
  %16 = inttoptr i64 %stack_var_-440.0.reload to ptr
  %17 = load i32, ptr %16, align 4
  call void @printIntLine(i32 %17)
  %18 = icmp eq i64 %stack_var_-440.0.reload, 0
  br i1 %18, label %dec_label_pc_35579, label %dec_label_pc_3556a

dec_label_pc_3556a:                               ; preds = %dec_label_pc_35550
  %19 = inttoptr i64 %stack_var_-440.0.reload to ptr
  %20 = and i64 %1, 4294967295
  %21 = inttoptr i64 %20 to ptr
  call void @_ZdaPv(ptr %19, ptr %21)
  br label %dec_label_pc_35579

dec_label_pc_35579:                               ; preds = %dec_label_pc_3556a, %dec_label_pc_35550
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %2, %22
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %23, label %dec_label_pc_3558e, label %dec_label_pc_35589

dec_label_pc_35589:                               ; preds = %dec_label_pc_35579
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3558e

dec_label_pc_3558e:                               ; preds = %dec_label_pc_35589, %dec_label_pc_35579
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

