@global_var_600fc = external constant [21 x i8]
@global_var_609dc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_41f79:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-432.0.reg2mem = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsFalse()
  %2 = icmp eq i32 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_41fc1, label %dec_label_pc_41fb0

dec_label_pc_41fb0:                               ; preds = %dec_label_pc_41f79
  call void @printLine(ptr @global_var_600fc)
  store i64 0, ptr %stack_var_-432.0.reg2mem, align 8
  br label %dec_label_pc_41fd2

dec_label_pc_41fc1:                               ; preds = %dec_label_pc_41f79
  %5 = call i64 @_Znam(i64 400)
  store i64 %5, ptr %stack_var_-432.0.reg2mem, align 8
  br label %dec_label_pc_41fd2

dec_label_pc_41fd2:                               ; preds = %dec_label_pc_41fc1, %dec_label_pc_41fb0
  %stack_var_-432.0.reload = load i64, ptr %stack_var_-432.0.reg2mem, align 8
  %6 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %6, i64 0, i64 50)
  %7 = inttoptr i64 %stack_var_-432.0.reload to ptr
  %8 = call ptr @memcpy(ptr %7, ptr nonnull %stack_var_-424, i32 400)
  %9 = inttoptr i64 %stack_var_-432.0.reload to ptr
  %10 = load i32, ptr %9, align 4
  call void @printIntLine(i32 %10)
  %11 = icmp eq i64 %stack_var_-432.0.reload, 0
  br i1 %11, label %dec_label_pc_42030, label %dec_label_pc_42021

dec_label_pc_42021:                               ; preds = %dec_label_pc_41fd2
  %12 = ptrtoint ptr %stack_var_-424 to i64
  %13 = and i64 %12, 4294967288
  %14 = inttoptr i64 %13 to ptr
  call void @_ZdaPv(ptr %7, ptr %14)
  br label %dec_label_pc_42030

dec_label_pc_42030:                               ; preds = %dec_label_pc_42021, %dec_label_pc_41fd2
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_42045, label %dec_label_pc_42040

dec_label_pc_42040:                               ; preds = %dec_label_pc_42030
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_42045

dec_label_pc_42045:                               ; preds = %dec_label_pc_42040, %dec_label_pc_42030
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_4d978:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_4d99b, label %dec_label_pc_4d98f

dec_label_pc_4d98f:                               ; preds = %dec_label_pc_4d978
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_4d99b

dec_label_pc_4d99b:                               ; preds = %dec_label_pc_4d98f, %dec_label_pc_4d978
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_4d9d3:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609dc, i64 %0)
  ret void
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_4de97:
  ret i32 0
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

