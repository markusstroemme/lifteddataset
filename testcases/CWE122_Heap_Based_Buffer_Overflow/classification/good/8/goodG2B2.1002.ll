@global_var_bd318 = external constant [4 x i8]

define i32 @staticReturnsTrue() local_unnamed_addr {
dec_label_pc_adab:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_af5a:
  %stack_var_-64.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsTrue()
  %2 = icmp eq i32 %1, 0
  store i64 0, ptr %stack_var_-64.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_afaa, label %dec_label_pc_af8b

dec_label_pc_af8b:                                ; preds = %dec_label_pc_af5a
  %3 = call ptr @malloc(i32 40)
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store i64 %4, ptr %stack_var_-64.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_afaa, label %dec_label_pc_afa0

dec_label_pc_afa0:                                ; preds = %dec_label_pc_af8b
  call void @exit(i32 -1)
  unreachable

dec_label_pc_afaa:                                ; preds = %dec_label_pc_af8b, %dec_label_pc_af5a
  %stack_var_-64.0.reload = load i64, ptr %stack_var_-64.0.reg2mem, align 8
  store i64 0, ptr %stack_var_-56, align 8
  %7 = inttoptr i64 %stack_var_-64.0.reload to ptr
  %8 = call ptr @memmove(ptr %7, ptr nonnull %stack_var_-56, i32 40)
  %9 = inttoptr i64 %stack_var_-64.0.reload to ptr
  %10 = load i32, ptr %9, align 4
  call void @printIntLine(i32 %10)
  call void @free(ptr %7)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_b018, label %dec_label_pc_b013

dec_label_pc_b013:                                ; preds = %dec_label_pc_afaa
  call void @__stack_chk_fail()
  br label %dec_label_pc_b018

dec_label_pc_b018:                                ; preds = %dec_label_pc_b013, %dec_label_pc_afaa
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9fee7:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bd318, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

