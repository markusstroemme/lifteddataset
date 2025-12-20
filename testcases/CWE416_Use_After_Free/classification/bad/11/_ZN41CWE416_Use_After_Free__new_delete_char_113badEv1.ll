@global_var_4a95b = external constant [6 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2e199:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = call i32 @globalReturnsTrue()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_2e1e6, label %dec_label_pc_2e1bb

dec_label_pc_2e1bb:                               ; preds = %dec_label_pc_2e199
  %4 = call i64 @_Znwm(i64 1)
  %5 = inttoptr i64 %4 to ptr
  store i8 65, ptr %5, align 1
  %6 = icmp eq i64 %4, 0
  store ptr %5, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_2e1e6, label %dec_label_pc_2e1d9

dec_label_pc_2e1d9:                               ; preds = %dec_label_pc_2e1bb
  %7 = inttoptr i64 %4 to ptr
  %8 = call i64 @_ZdlPvm(ptr %7, i64 1)
  store ptr %5, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_2e1e6

dec_label_pc_2e1e6:                               ; preds = %dec_label_pc_2e1d9, %dec_label_pc_2e1bb, %dec_label_pc_2e199
  %9 = call i32 @globalReturnsTrue()
  %10 = icmp eq i32 %9, 0
  %11 = icmp eq i1 %10, false
  %12 = zext i1 %11 to i64
  %13 = and i32 %9, -256
  %14 = sext i32 %13 to i64
  %15 = or i64 %12, %14
  %16 = icmp eq i1 %11, false
  store i64 %15, ptr %rax.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_2e205, label %dec_label_pc_2e1f4

dec_label_pc_2e1f4:                               ; preds = %dec_label_pc_2e1e6
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %17 = load i8, ptr %stack_var_-16.0.reload, align 1
  call void @printHexCharLine(i8 %17)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2e205

dec_label_pc_2e205:                               ; preds = %dec_label_pc_2e1f4, %dec_label_pc_2e1e6
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_3b981:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a95b, i32 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_3bd17:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

