@global_var_4a644 = external constant [21 x i8]
@global_var_4a951 = external constant [5 x i8]
@0 = external global i32
@global_var_63080 = external local_unnamed_addr global i32
@global_var_630ec = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_32435:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_630ec, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_32464, label %dec_label_pc_32453

dec_label_pc_32453:                               ; preds = %dec_label_pc_32435
  call void @printLine(ptr @global_var_4a644)
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_3247d

dec_label_pc_32464:                               ; preds = %dec_label_pc_32435
  %2 = call i64 @_Znwm(i64 8)
  %3 = inttoptr i64 %2 to ptr
  store i64 5, ptr %3, align 8
  store ptr %3, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_3247d

dec_label_pc_3247d:                               ; preds = %dec_label_pc_32464, %dec_label_pc_32453
  %4 = load i32, ptr @global_var_63080, align 4
  %5 = icmp eq i32 %4, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_32496, label %dec_label_pc_32487

dec_label_pc_32487:                               ; preds = %dec_label_pc_3247d
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %6 = load i64, ptr %stack_var_-16.0.reload, align 8
  call void @printLongLongLine(i64 %6)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_32496

dec_label_pc_32496:                               ; preds = %dec_label_pc_32487, %dec_label_pc_3247d
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3b807:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3b82a, label %dec_label_pc_3b81e

dec_label_pc_3b81e:                               ; preds = %dec_label_pc_3b807
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3b82a

dec_label_pc_3b82a:                               ; preds = %dec_label_pc_3b81e, %dec_label_pc_3b807
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_3b925:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a951, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

