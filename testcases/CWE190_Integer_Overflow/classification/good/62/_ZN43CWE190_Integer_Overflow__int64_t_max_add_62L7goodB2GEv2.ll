@global_var_91260 = external constant [54 x i8]
@global_var_95449 = external constant [5 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_5ac0e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-32, align 8
  %1 = bitcast ptr %stack_var_-32 to ptr
  %2 = call i64 @anon1(ptr nonnull %1)
  %3 = load i64, ptr %stack_var_-32, align 8
  %4 = icmp eq i64 %3, 9223372036854775807
  br i1 %4, label %dec_label_pc_5ac6a, label %dec_label_pc_5ac50

dec_label_pc_5ac50:                               ; preds = %dec_label_pc_5ac0e
  %5 = add i64 %3, 1
  call void @printLongLongLine(i64 %5)
  br label %dec_label_pc_5ac79

dec_label_pc_5ac6a:                               ; preds = %dec_label_pc_5ac0e
  call void @printLine(ptr @global_var_91260)
  br label %dec_label_pc_5ac79

dec_label_pc_5ac79:                               ; preds = %dec_label_pc_5ac6a, %dec_label_pc_5ac50
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_5ac8e, label %dec_label_pc_5ac89

dec_label_pc_5ac89:                               ; preds = %dec_label_pc_5ac79
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5ac8e

dec_label_pc_5ac8e:                               ; preds = %dec_label_pc_5ac89, %dec_label_pc_5ac79
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_5acdf:
  %0 = ptrtoint ptr %arg1 to i64
  %1 = bitcast ptr %arg1 to ptr
  store i64 9223372036854775807, ptr %1, align 8
  ret i64 %0
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_7758b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_775ae, label %dec_label_pc_775a2

dec_label_pc_775a2:                               ; preds = %dec_label_pc_7758b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_775ae

dec_label_pc_775ae:                               ; preds = %dec_label_pc_775a2, %dec_label_pc_7758b
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_776a9:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_95449, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

