@global_var_7c82d = external constant [5 x i8]
@0 = external global i32
@global_var_320 = external constant i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_47b46:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-840 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-840, align 8
  %2 = bitcast ptr %stack_var_-840 to ptr
  %3 = call i64 @anon1(ptr nonnull %2)
  %4 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %4, i64 0, i64 100)
  %5 = load i64, ptr %stack_var_-840, align 8
  %6 = add i64 %0, -816
  store i64 %5, ptr %.reg2mem, align 8
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_47ba2

dec_label_pc_47ba2:                               ; preds = %dec_label_pc_47ba2, %dec_label_pc_47b46
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %.reload = load i64, ptr %.reg2mem, align 8
  %7 = mul i64 %storemerge1.reload, 8
  %8 = add i64 %7, %.reload
  %9 = add i64 %6, %7
  %10 = inttoptr i64 %9 to ptr
  %11 = load i64, ptr %10, align 8
  %12 = inttoptr i64 %8 to ptr
  store i64 %11, ptr %12, align 8
  %13 = add nuw nsw i64 %storemerge1.reload, 1
  %14 = load i64, ptr %stack_var_-840, align 8
  %exitcond = icmp eq i64 %13, 100
  store i64 %14, ptr %.reg2mem, align 8
  store i64 %13, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_47bdb, label %dec_label_pc_47ba2

dec_label_pc_47bdb:                               ; preds = %dec_label_pc_47ba2
  %15 = inttoptr i64 %14 to ptr
  %16 = load i64, ptr %15, align 8
  call void @printLongLongLine(i64 %16)
  %17 = load i64, ptr %stack_var_-840, align 8
  %18 = inttoptr i64 %17 to ptr
  call void @free(ptr %18)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %1, %19
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_47c11, label %dec_label_pc_47c0c

dec_label_pc_47c0c:                               ; preds = %dec_label_pc_47bdb
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_47c11

dec_label_pc_47c11:                               ; preds = %dec_label_pc_47c0c, %dec_label_pc_47bdb
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_47c60:
  %0 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %1 = ptrtoint ptr %0 to i64
  %2 = bitcast ptr %arg1 to ptr
  store i64 %1, ptr %2, align 8
  ret i64 ptrtoint (ptr @global_var_320 to i64)
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_658c4:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7c82d, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

