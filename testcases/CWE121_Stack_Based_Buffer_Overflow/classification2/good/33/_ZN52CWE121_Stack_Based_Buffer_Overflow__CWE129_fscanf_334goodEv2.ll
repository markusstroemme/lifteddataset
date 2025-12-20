@global_var_bcd80 = external constant [36 x i8]
@0 = external global i32
@global_var_ef090 = external local_unnamed_addr global ptr
@global_var_bcd58 = external constant [3 x i8]

define i64 @anon0() local_unnamed_addr {
dec_label_pc_7e40f:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_ef090, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_bcd58)
  call void @printLine(ptr @global_var_bcd80)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_7e424, label %dec_label_pc_7e41f

dec_label_pc_7e41f:                               ; preds = %dec_label_pc_7e40f
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7e424

dec_label_pc_7e424:                               ; preds = %dec_label_pc_7e41f, %dec_label_pc_7e40f
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

