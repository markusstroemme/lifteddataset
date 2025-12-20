@global_var_4a6de = external constant [21 x i8]
@global_var_4a951 = external constant [5 x i8]
@0 = external global i32
@global_var_630ac = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_335ba:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_630ac, align 4
  %1 = icmp eq i32 %0, 5
  br i1 %1, label %dec_label_pc_335ea, label %dec_label_pc_335d9

dec_label_pc_335d9:                               ; preds = %dec_label_pc_335ba
  call void @printLine(ptr @global_var_4a6de)
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_33603

dec_label_pc_335ea:                               ; preds = %dec_label_pc_335ba
  %2 = call i64 @_Znwm(i64 8)
  %3 = inttoptr i64 %2 to ptr
  store i64 5, ptr %3, align 8
  store ptr %3, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_33603

dec_label_pc_33603:                               ; preds = %dec_label_pc_335ea, %dec_label_pc_335d9
  %4 = load i32, ptr @global_var_630ac, align 4
  %5 = zext i32 %4 to i64
  %6 = icmp eq i32 %4, 5
  %7 = icmp eq i1 %6, false
  store i64 %5, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_3361d, label %dec_label_pc_3360e

dec_label_pc_3360e:                               ; preds = %dec_label_pc_33603
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %8 = load i64, ptr %stack_var_-16.0.reload, align 8
  call void @printLongLongLine(i64 %8)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3361d

dec_label_pc_3361d:                               ; preds = %dec_label_pc_3360e, %dec_label_pc_33603
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3b807:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3b82a, label %dec_label_pc_3b81e

dec_label_pc_3b81e:                               ; preds = %dec_label_pc_3b807
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3b82a

dec_label_pc_3b82a:                               ; preds = %dec_label_pc_3b81e, %dec_label_pc_3b807
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_3b925:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a951, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

