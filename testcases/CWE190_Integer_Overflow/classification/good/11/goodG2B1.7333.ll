@global_var_72f6c = external constant [21 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_25aca:
  %stack_var_-12.0.reg2mem = alloca i32, align 4
  %0 = call i32 @globalReturnsFalse()
  %1 = icmp eq i32 %0, 0
  store i32 2, ptr %stack_var_-12.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_25b01, label %dec_label_pc_25aea

dec_label_pc_25aea:                               ; preds = %dec_label_pc_25aca
  call void @printLine(ptr @global_var_72f6c)
  store i32 0, ptr %stack_var_-12.0.reg2mem, align 4
  br label %dec_label_pc_25b01

dec_label_pc_25b01:                               ; preds = %dec_label_pc_25aca, %dec_label_pc_25aea
  %2 = call i32 @globalReturnsTrue()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_25b29, label %dec_label_pc_25b0f

dec_label_pc_25b0f:                               ; preds = %dec_label_pc_25b01
  %stack_var_-12.0.reload = load i32, ptr %stack_var_-12.0.reg2mem, align 4
  %narrow = mul nuw nsw i32 %stack_var_-12.0.reload, %stack_var_-12.0.reload
  call void @printIntLine(i32 %narrow)
  br label %dec_label_pc_25b29

dec_label_pc_25b29:                               ; preds = %dec_label_pc_25b0f, %dec_label_pc_25b01
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_5e30b:
  ret i32 1
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_5e31a:
  ret i32 0
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

