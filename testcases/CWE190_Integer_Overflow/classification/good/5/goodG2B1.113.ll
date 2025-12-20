@global_var_81563 = external constant [21 x i8]
@global_var_8c833 = external constant [6 x i8]
@global_var_bc010 = external local_unnamed_addr global i32
@global_var_bc0bc = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_8a87:
  %stack_var_-10.0.reg2mem = alloca i8, align 1
  %0 = load i32, ptr @global_var_bc0bc, align 4
  %1 = icmp eq i32 %0, 0
  store i8 3, ptr %stack_var_-10.0.reg2mem, align 1
  br i1 %1, label %dec_label_pc_8ab6, label %dec_label_pc_8aa1

dec_label_pc_8aa1:                                ; preds = %dec_label_pc_8a87
  call void @printLine(ptr @global_var_81563)
  store i8 33, ptr %stack_var_-10.0.reg2mem, align 1
  br label %dec_label_pc_8ab6

dec_label_pc_8ab6:                                ; preds = %dec_label_pc_8a87, %dec_label_pc_8aa1
  %2 = load i32, ptr @global_var_bc010, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_8adc, label %dec_label_pc_8ac0

dec_label_pc_8ac0:                                ; preds = %dec_label_pc_8ab6
  %stack_var_-10.0.reload = load i8, ptr %stack_var_-10.0.reg2mem, align 1
  call void @printHexCharLine(i8 %stack_var_-10.0.reload)
  br label %dec_label_pc_8adc

dec_label_pc_8adc:                                ; preds = %dec_label_pc_8ac0, %dec_label_pc_8ab6
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

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c833, i32 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

