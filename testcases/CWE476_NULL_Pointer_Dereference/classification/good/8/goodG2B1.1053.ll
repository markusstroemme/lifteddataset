@global_var_47a4e = external constant [21 x i8]
@global_var_47a70 = external local_unnamed_addr constant [5 x i8]
@global_var_4a58f = external constant [6 x i8]

define i32 @staticReturnsTrue.101() local_unnamed_addr {
dec_label_pc_7f5f:
  ret i32 1
}

define i32 @staticReturnsFalse.102() local_unnamed_addr {
dec_label_pc_7f6e:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_808a:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = call i32 @staticReturnsFalse.102()
  %1 = icmp eq i32 %0, 0
  store ptr @global_var_47a70, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_80c0, label %dec_label_pc_80a4

dec_label_pc_80a4:                                ; preds = %dec_label_pc_808a
  call void @printLine(ptr @global_var_47a4e)
  br label %dec_label_pc_80c0

dec_label_pc_80c0:                                ; preds = %dec_label_pc_808a, %dec_label_pc_80a4
  %2 = call i32 @staticReturnsTrue.101()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_80df, label %dec_label_pc_80ce

dec_label_pc_80ce:                                ; preds = %dec_label_pc_80c0
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %4 = load i8, ptr %stack_var_-16.0.reload, align 1
  call void @printHexCharLine(i8 %4)
  br label %dec_label_pc_80df

dec_label_pc_80df:                                ; preds = %dec_label_pc_80ce, %dec_label_pc_80c0
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

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

