@global_var_609e9 = external constant [5 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1dfe6:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = call i64 @_Znam(i64 400)
  %4 = ptrtoint ptr %stack_var_-8 to i64
  %5 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %5, i64 0, i64 100)
  %6 = add i64 %4, -816
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_1e00a

dec_label_pc_1e00a:                               ; preds = %dec_label_pc_1e00a, %dec_label_pc_1dfe6
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %7 = mul i64 %storemerge2.reload, 8
  %8 = add i64 %7, %3
  %9 = add i64 %6, %7
  %10 = inttoptr i64 %9 to ptr
  %11 = load i64, ptr %10, align 8
  %12 = inttoptr i64 %8 to ptr
  store i64 %11, ptr %12, align 8
  %13 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %13, 100
  store i64 %13, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1e047, label %dec_label_pc_1e00a

dec_label_pc_1e047:                               ; preds = %dec_label_pc_1e00a
  %14 = inttoptr i64 %3 to ptr
  %15 = load i64, ptr %14, align 8
  call void @printLongLongLine(i64 %15)
  %16 = icmp eq i64 %3, 0
  br i1 %16, label %dec_label_pc_1e072, label %dec_label_pc_1e063

dec_label_pc_1e063:                               ; preds = %dec_label_pc_1e047
  %17 = and i64 %1, 4294967295
  %18 = inttoptr i64 %17 to ptr
  call void @_ZdaPv(ptr %14, ptr %18)
  br label %dec_label_pc_1e072

dec_label_pc_1e072:                               ; preds = %dec_label_pc_1e063, %dec_label_pc_1e047
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %2, %19
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_1e087, label %dec_label_pc_1e082

dec_label_pc_1e082:                               ; preds = %dec_label_pc_1e072
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1e087

dec_label_pc_1e087:                               ; preds = %dec_label_pc_1e082, %dec_label_pc_1e072
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

