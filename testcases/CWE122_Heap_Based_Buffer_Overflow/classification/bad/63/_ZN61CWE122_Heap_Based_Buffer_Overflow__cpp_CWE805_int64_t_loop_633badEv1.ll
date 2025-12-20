@global_var_609e9 = external constant [5 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_20ac2:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 400)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = bitcast ptr %stack_var_-24 to ptr
  %3 = call i64 @anon1(ptr nonnull %2)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_20b14, label %dec_label_pc_20b0f

dec_label_pc_20b0f:                               ; preds = %dec_label_pc_20ac2
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_20b14

dec_label_pc_20b14:                               ; preds = %dec_label_pc_20b0f, %dec_label_pc_20ac2
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_20b7a:
  %0 = alloca i64, align 8
  %1 = alloca i1, align 1
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %2 = load i64, ptr %0, align 8
  %3 = load i1, ptr %1, align 1
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %4 = ptrtoint ptr %stack_var_-8 to i64
  %5 = call i64 @__readfsqword(i64 40)
  %6 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %6, i64 0, i64 100)
  %7 = ptrtoint ptr %arg1 to i64
  %8 = add i64 %4, -816
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_20bd4

dec_label_pc_20bd4:                               ; preds = %dec_label_pc_20bd4, %dec_label_pc_20b7a
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %9 = mul i64 %storemerge2.reload, 8
  %10 = add i64 %9, %7
  %11 = add i64 %8, %9
  %12 = inttoptr i64 %11 to ptr
  %13 = load i64, ptr %12, align 8
  %14 = inttoptr i64 %10 to ptr
  store i64 %13, ptr %14, align 8
  %15 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %15, 100
  store i64 %15, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_20c11, label %dec_label_pc_20bd4

dec_label_pc_20c11:                               ; preds = %dec_label_pc_20bd4
  %16 = select i1 %3, i64 -800, i64 800
  %17 = ptrtoint ptr %stack_var_-824 to i64
  %18 = add i64 %16, %17
  call void @printLongLongLine(i64 %18)
  %19 = icmp eq ptr %arg1, null
  br i1 %19, label %dec_label_pc_20c3c, label %dec_label_pc_20c2d

dec_label_pc_20c2d:                               ; preds = %dec_label_pc_20c11
  %20 = bitcast ptr %arg1 to ptr
  %21 = and i64 %2, 4294967295
  %22 = inttoptr i64 %21 to ptr
  call void @_ZdaPv(ptr %20, ptr %22)
  br label %dec_label_pc_20c3c

dec_label_pc_20c3c:                               ; preds = %dec_label_pc_20c2d, %dec_label_pc_20c11
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %5, %23
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %24, label %dec_label_pc_20c51, label %dec_label_pc_20c4c

dec_label_pc_20c4c:                               ; preds = %dec_label_pc_20c3c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_20c51

dec_label_pc_20c51:                               ; preds = %dec_label_pc_20c4c, %dec_label_pc_20c3c
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

