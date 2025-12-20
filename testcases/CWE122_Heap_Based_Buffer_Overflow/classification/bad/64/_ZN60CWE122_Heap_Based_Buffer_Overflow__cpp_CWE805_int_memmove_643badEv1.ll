@global_var_609dc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_4b960:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 200)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = call i64 @anon1(ptr nonnull %stack_var_-24)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_4b9b2, label %dec_label_pc_4b9ad

dec_label_pc_4b9ad:                               ; preds = %dec_label_pc_4b960
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4b9b2

dec_label_pc_4b9b2:                               ; preds = %dec_label_pc_4b9ad, %dec_label_pc_4b960
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_4ba18:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-424 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %3, i64 0, i64 50)
  %4 = call ptr @memmove(ptr %arg1, ptr nonnull %stack_var_-424, i32 400)
  %5 = trunc i64 %1 to i32
  call void @printIntLine(i32 %5)
  %6 = icmp eq ptr %arg1, null
  br i1 %6, label %dec_label_pc_4baba, label %dec_label_pc_4baab

dec_label_pc_4baab:                               ; preds = %dec_label_pc_4ba18
  %7 = ptrtoint ptr %stack_var_-424 to i64
  %8 = and i64 %7, 4294967288
  %9 = inttoptr i64 %8 to ptr
  call void @_ZdaPv(ptr nonnull %arg1, ptr %9)
  br label %dec_label_pc_4baba

dec_label_pc_4baba:                               ; preds = %dec_label_pc_4baab, %dec_label_pc_4ba18
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %2, %10
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_4bacf, label %dec_label_pc_4baca

dec_label_pc_4baca:                               ; preds = %dec_label_pc_4baba
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4bacf

dec_label_pc_4bacf:                               ; preds = %dec_label_pc_4baca, %dec_label_pc_4baba
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

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

