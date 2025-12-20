@global_var_85a50 = external constant [21 x i8]
@global_var_8c32c = external constant [4 x i8]

define i32 @staticReturnsTrue.961() local_unnamed_addr {
dec_label_pc_3ca29:
  ret i32 1
}

define i32 @staticReturnsFalse.962() local_unnamed_addr {
dec_label_pc_3ca38:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_3cf3e:
  %stack_var_-16.0.reg2mem = alloca i32, align 4
  %0 = call i32 @staticReturnsFalse.962()
  %1 = icmp eq i32 %0, 0
  store i32 2, ptr %stack_var_-16.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_3cf77, label %dec_label_pc_3cf5f

dec_label_pc_3cf5f:                               ; preds = %dec_label_pc_3cf3e
  call void @printLine(ptr @global_var_85a50)
  store i32 0, ptr %stack_var_-16.0.reg2mem, align 4
  br label %dec_label_pc_3cf77

dec_label_pc_3cf77:                               ; preds = %dec_label_pc_3cf3e, %dec_label_pc_3cf5f
  %2 = call i32 @staticReturnsTrue.961()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_3cf98, label %dec_label_pc_3cf85

dec_label_pc_3cf85:                               ; preds = %dec_label_pc_3cf77
  %stack_var_-16.0.reload = load i32, ptr %stack_var_-16.0.reg2mem, align 4
  %4 = mul nuw nsw i32 %stack_var_-16.0.reload, %stack_var_-16.0.reload
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_3cf98

dec_label_pc_3cf98:                               ; preds = %dec_label_pc_3cf85, %dec_label_pc_3cf77
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6e78b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6e7ae, label %dec_label_pc_6e7a2

dec_label_pc_6e7a2:                               ; preds = %dec_label_pc_6e78b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6e7ae

dec_label_pc_6e7ae:                               ; preds = %dec_label_pc_6e7a2, %dec_label_pc_6e78b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

