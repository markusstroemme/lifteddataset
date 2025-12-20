@global_var_835b8 = external constant [4 x i8]
@global_var_835bc = external constant [21 x i8]
@global_var_835d8 = external constant [54 x i8]
@global_var_8c829 = external constant [5 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc0a4 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_17c37:
  %.reg2mem = alloca i32, align 4
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-32, align 8
  %1 = load i32, ptr @global_var_bc0a4, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_17c87, label %dec_label_pc_17c65

dec_label_pc_17c65:                               ; preds = %dec_label_pc_17c37
  %4 = load ptr, ptr @global_var_bc0b0, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_835b8, ptr nonnull %stack_var_-32)
  %.pr = load i32, ptr @global_var_bc0a4, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  br label %dec_label_pc_17c87

dec_label_pc_17c87:                               ; preds = %dec_label_pc_17c65, %dec_label_pc_17c37
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  br i1 %6, label %dec_label_pc_17ca3, label %dec_label_pc_17c92

dec_label_pc_17c92:                               ; preds = %dec_label_pc_17c87
  call void @printLine(ptr @global_var_835bc)
  br label %dec_label_pc_17ce7

dec_label_pc_17ca3:                               ; preds = %dec_label_pc_17c87
  %7 = load i64, ptr %stack_var_-32, align 8
  %8 = icmp eq i64 %7, 9223372036854775807
  br i1 %8, label %dec_label_pc_17cd8, label %dec_label_pc_17cb6

dec_label_pc_17cb6:                               ; preds = %dec_label_pc_17ca3
  %9 = add i64 %7, 1
  store i64 %9, ptr %stack_var_-32, align 8
  call void @printLongLongLine(i64 %9)
  br label %dec_label_pc_17ce7

dec_label_pc_17cd8:                               ; preds = %dec_label_pc_17ca3
  call void @printLine(ptr @global_var_835d8)
  br label %dec_label_pc_17ce7

dec_label_pc_17ce7:                               ; preds = %dec_label_pc_17cd8, %dec_label_pc_17cb6, %dec_label_pc_17c92
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_17cfc, label %dec_label_pc_17cf7

dec_label_pc_17cf7:                               ; preds = %dec_label_pc_17ce7
  call void @__stack_chk_fail()
  br label %dec_label_pc_17cfc

dec_label_pc_17cfc:                               ; preds = %dec_label_pc_17cf7, %dec_label_pc_17ce7
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

