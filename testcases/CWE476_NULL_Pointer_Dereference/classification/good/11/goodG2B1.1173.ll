@global_var_47ac3 = external constant [21 x i8]
@global_var_47ae5 = external local_unnamed_addr constant [5 x i8]
@global_var_4a58f = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_85d7:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = call i32 @globalReturnsFalse()
  %1 = icmp eq i32 %0, 0
  store ptr @global_var_47ae5, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_860d, label %dec_label_pc_85f1

dec_label_pc_85f1:                                ; preds = %dec_label_pc_85d7
  call void @printLine(ptr @global_var_47ac3)
  br label %dec_label_pc_860d

dec_label_pc_860d:                                ; preds = %dec_label_pc_85d7, %dec_label_pc_85f1
  %2 = call i32 @globalReturnsTrue()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_862c, label %dec_label_pc_861b

dec_label_pc_861b:                                ; preds = %dec_label_pc_860d
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %4 = load i8, ptr %stack_var_-16.0.reload, align 1
  call void @printHexCharLine(i8 %4)
  br label %dec_label_pc_862c

dec_label_pc_862c:                                ; preds = %dec_label_pc_861b, %dec_label_pc_860d
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3cb2f:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3cb52, label %dec_label_pc_3cb46

dec_label_pc_3cb46:                               ; preds = %dec_label_pc_3cb2f
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3cb52

dec_label_pc_3cb52:                               ; preds = %dec_label_pc_3cb46, %dec_label_pc_3cb2f
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_3cca9:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a58f, i32 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_3d03f:
  ret i32 1
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_3d04e:
  ret i32 0
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

