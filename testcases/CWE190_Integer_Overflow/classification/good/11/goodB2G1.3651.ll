@global_var_71060 = external constant [21 x i8]
@global_var_71078 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_15ee8:
  %stack_var_-32.0.reg2mem = alloca i32, align 4
  %0 = call i32 @globalReturnsTrue()
  %1 = icmp eq i32 %0, 0
  store i32 0, ptr %stack_var_-32.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_15f53, label %dec_label_pc_15f0a

dec_label_pc_15f0a:                               ; preds = %dec_label_pc_15ee8
  %2 = call i32 @rand()
  %3 = urem i32 %2, 2
  %4 = icmp eq i32 %3, 0
  %5 = call i32 @rand()
  %6 = mul i32 %5, 1073741824
  %7 = call i32 @rand()
  %8 = mul i32 %7, 32768
  %9 = xor i32 %8, %6
  %10 = call i32 @rand()
  %11 = xor i32 %9, %10
  %12 = sext i1 %4 to i32
  %storemerge.in = xor i32 %11, %12
  store i32 %storemerge.in, ptr %stack_var_-32.0.reg2mem, align 4
  br label %dec_label_pc_15f53

dec_label_pc_15f53:                               ; preds = %dec_label_pc_15f0a, %dec_label_pc_15ee8
  %13 = call i32 @globalReturnsFalse()
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %dec_label_pc_15f72, label %dec_label_pc_15f61

dec_label_pc_15f61:                               ; preds = %dec_label_pc_15f53
  call void @printLine(ptr @global_var_71060)
  br label %dec_label_pc_15fb2

dec_label_pc_15f72:                               ; preds = %dec_label_pc_15f53
  %stack_var_-32.0.reload = load i32, ptr %stack_var_-32.0.reg2mem, align 4
  %stack_var_-32.0.off = add i32 %stack_var_-32.0.reload, 46339
  %15 = icmp ugt i32 %stack_var_-32.0.off, 92678
  br i1 %15, label %dec_label_pc_15fa3, label %dec_label_pc_15f8d

dec_label_pc_15f8d:                               ; preds = %dec_label_pc_15f72
  %16 = mul i32 %stack_var_-32.0.reload, %stack_var_-32.0.reload
  call void @printIntLine(i32 %16)
  br label %dec_label_pc_15fb2

dec_label_pc_15fa3:                               ; preds = %dec_label_pc_15f72
  call void @printLine(ptr @global_var_71078)
  br label %dec_label_pc_15fb2

dec_label_pc_15fb2:                               ; preds = %dec_label_pc_15fa3, %dec_label_pc_15f8d, %dec_label_pc_15f61
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

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

