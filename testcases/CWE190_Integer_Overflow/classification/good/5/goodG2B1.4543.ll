@global_var_68ae3 = external constant [21 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c028 = external local_unnamed_addr global i32
@global_var_9c124 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_19283:
  %stack_var_-16.0.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_9c124, align 4
  %1 = icmp eq i32 %0, 0
  store i32 2, ptr %stack_var_-16.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_192b8, label %dec_label_pc_192a0

dec_label_pc_192a0:                               ; preds = %dec_label_pc_19283
  call void @printLine(ptr @global_var_68ae3)
  store i32 0, ptr %stack_var_-16.0.reg2mem, align 4
  br label %dec_label_pc_192b8

dec_label_pc_192b8:                               ; preds = %dec_label_pc_19283, %dec_label_pc_192a0
  %2 = load i32, ptr @global_var_9c028, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_192d5, label %dec_label_pc_192c2

dec_label_pc_192c2:                               ; preds = %dec_label_pc_192b8
  %stack_var_-16.0.reload = load i32, ptr %stack_var_-16.0.reg2mem, align 4
  %4 = mul nuw nsw i32 %stack_var_-16.0.reload, %stack_var_-16.0.reload
  call void @printUnsignedLine(i32 %4)
  br label %dec_label_pc_192d5

dec_label_pc_192d5:                               ; preds = %dec_label_pc_192c2, %dec_label_pc_192b8
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_54bd7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_54bfa, label %dec_label_pc_54bee

dec_label_pc_54bee:                               ; preds = %dec_label_pc_54bd7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_54bfa

dec_label_pc_54bfa:                               ; preds = %dec_label_pc_54bee, %dec_label_pc_54bd7
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

