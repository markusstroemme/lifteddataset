@global_var_4a95b = external constant [6 x i8]
@0 = external global i32
@global_var_63074 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2d99f:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_63074, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_2d9e9, label %dec_label_pc_2d9be

dec_label_pc_2d9be:                               ; preds = %dec_label_pc_2d99f
  %3 = call i64 @_Znwm(i64 1)
  %4 = inttoptr i64 %3 to ptr
  store i8 65, ptr %4, align 1
  %5 = icmp eq i64 %3, 0
  store ptr %4, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_2d9e9, label %dec_label_pc_2d9dc

dec_label_pc_2d9dc:                               ; preds = %dec_label_pc_2d9be
  %6 = inttoptr i64 %3 to ptr
  %7 = call i64 @_ZdlPvm(ptr %6, i64 1)
  store ptr %4, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_2d9e9

dec_label_pc_2d9e9:                               ; preds = %dec_label_pc_2d9dc, %dec_label_pc_2d9be, %dec_label_pc_2d99f
  %8 = load i32, ptr @global_var_63074, align 4
  %9 = zext i32 %8 to i64
  %10 = icmp eq i32 %8, 5
  %11 = icmp eq i1 %10, false
  store i64 %9, ptr %rax.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_2da05, label %dec_label_pc_2d9f4

dec_label_pc_2d9f4:                               ; preds = %dec_label_pc_2d9e9
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %12 = load i8, ptr %stack_var_-16.0.reload, align 1
  call void @printHexCharLine(i8 %12)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2da05

dec_label_pc_2da05:                               ; preds = %dec_label_pc_2d9f4, %dec_label_pc_2d9e9
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_3b981:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a95b, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

