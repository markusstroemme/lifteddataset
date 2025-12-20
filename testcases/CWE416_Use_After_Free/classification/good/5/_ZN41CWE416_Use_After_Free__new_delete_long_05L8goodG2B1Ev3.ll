@global_var_4a7b4 = external constant [21 x i8]
@global_var_4a951 = external constant [5 x i8]
@0 = external global i32
@global_var_63090 = external local_unnamed_addr global i32
@global_var_630f4 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_36db2:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_630f4, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_36de1, label %dec_label_pc_36dd0

dec_label_pc_36dd0:                               ; preds = %dec_label_pc_36db2
  call void @printLine(ptr @global_var_4a7b4)
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_36dfa

dec_label_pc_36de1:                               ; preds = %dec_label_pc_36db2
  %2 = call i64 @_Znwm(i64 8)
  %3 = inttoptr i64 %2 to ptr
  store i64 5, ptr %3, align 8
  store ptr %3, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_36dfa

dec_label_pc_36dfa:                               ; preds = %dec_label_pc_36de1, %dec_label_pc_36dd0
  %4 = load i32, ptr @global_var_63090, align 4
  %5 = icmp eq i32 %4, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_36e13, label %dec_label_pc_36e04

dec_label_pc_36e04:                               ; preds = %dec_label_pc_36dfa
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %6 = load i64, ptr %stack_var_-16.0.reload, align 8
  call void @printLongLine(i64 %6)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_36e13

dec_label_pc_36e13:                               ; preds = %dec_label_pc_36e04, %dec_label_pc_36dfa
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

define void @printLongLine(i64 %longNumber) local_unnamed_addr {
dec_label_pc_3b8f7:
  %0 = trunc i64 %longNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a951, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

