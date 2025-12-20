@global_var_8160b = external constant [21 x i8]
@global_var_8c833 = external constant [6 x i8]
@global_var_bc014 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_8fe7:
  %stack_var_-10.03.reg2mem = alloca i8, align 1
  %0 = load i32, ptr @global_var_bc014, align 4
  %1 = icmp eq i32 %0, 5
  store i8 3, ptr %stack_var_-10.03.reg2mem, align 1
  br i1 %1, label %dec_label_pc_9022, label %dec_label_pc_9017

dec_label_pc_9017:                                ; preds = %dec_label_pc_8fe7
  call void @printLine(ptr @global_var_8160b)
  %.pre = load i32, ptr @global_var_bc014, align 4
  %phitmp = icmp eq i32 %.pre, 5
  %phitmp2 = icmp eq i1 %phitmp, false
  store i8 33, ptr %stack_var_-10.03.reg2mem, align 1
  br i1 %phitmp2, label %dec_label_pc_903e, label %dec_label_pc_9022

dec_label_pc_9022:                                ; preds = %dec_label_pc_8fe7, %dec_label_pc_9017
  %stack_var_-10.03.reload = load i8, ptr %stack_var_-10.03.reg2mem, align 1
  call void @printHexCharLine(i8 %stack_var_-10.03.reload)
  br label %dec_label_pc_903e

dec_label_pc_903e:                                ; preds = %dec_label_pc_9022, %dec_label_pc_9017
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

