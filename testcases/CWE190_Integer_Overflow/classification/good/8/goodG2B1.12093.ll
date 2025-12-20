@global_var_8f5ca = external constant [21 x i8]
@global_var_9543c = external constant [4 x i8]

define i32 @staticReturnsTrue.1205() local_unnamed_addr {
dec_label_pc_469a8:
  ret i32 1
}

define i32 @staticReturnsFalse.1206() local_unnamed_addr {
dec_label_pc_469b7:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_46df4:
  %stack_var_-16.0.reg2mem = alloca i32, align 4
  %0 = call i32 @staticReturnsFalse.1206()
  %1 = icmp eq i32 %0, 0
  store i32 2, ptr %stack_var_-16.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_46e2d, label %dec_label_pc_46e15

dec_label_pc_46e15:                               ; preds = %dec_label_pc_46df4
  call void @printLine(ptr @global_var_8f5ca)
  store i32 0, ptr %stack_var_-16.0.reg2mem, align 4
  br label %dec_label_pc_46e2d

dec_label_pc_46e2d:                               ; preds = %dec_label_pc_46df4, %dec_label_pc_46e15
  %2 = call i32 @staticReturnsTrue.1205()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_46e4e, label %dec_label_pc_46e3b

dec_label_pc_46e3b:                               ; preds = %dec_label_pc_46e2d
  %stack_var_-16.0.reload = load i32, ptr %stack_var_-16.0.reg2mem, align 4
  %4 = mul nuw nsw i32 %stack_var_-16.0.reload, %stack_var_-16.0.reload
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_46e4e

dec_label_pc_46e4e:                               ; preds = %dec_label_pc_46e3b, %dec_label_pc_46e2d
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_7758b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_775ae, label %dec_label_pc_775a2

dec_label_pc_775a2:                               ; preds = %dec_label_pc_7758b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_775ae

dec_label_pc_775ae:                               ; preds = %dec_label_pc_775a2, %dec_label_pc_7758b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_775e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_9543c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

