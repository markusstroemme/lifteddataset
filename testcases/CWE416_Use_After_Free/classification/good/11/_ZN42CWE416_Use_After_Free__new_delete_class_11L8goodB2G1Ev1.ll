@global_var_4a5fc = external constant [21 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3085e:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i32 @globalReturnsTrue()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_308b9, label %dec_label_pc_30880

dec_label_pc_30880:                               ; preds = %dec_label_pc_3085e
  %4 = call i64 @_Znwm(i64 8)
  %5 = inttoptr i64 %4 to ptr
  store i32 1, ptr %5, align 4
  %6 = add i64 %4, 4
  %7 = inttoptr i64 %6 to ptr
  store i32 2, ptr %7, align 4
  %8 = icmp eq i64 %4, 0
  br i1 %8, label %dec_label_pc_308b9, label %dec_label_pc_308ac

dec_label_pc_308ac:                               ; preds = %dec_label_pc_30880
  %9 = inttoptr i64 %4 to ptr
  %10 = call i64 @_ZdlPvm(ptr %9, i64 8)
  br label %dec_label_pc_308b9

dec_label_pc_308b9:                               ; preds = %dec_label_pc_308ac, %dec_label_pc_30880, %dec_label_pc_3085e
  %11 = call i32 @globalReturnsFalse()
  %12 = icmp eq i32 %11, 0
  %13 = icmp eq i1 %12, false
  %14 = zext i1 %13 to i64
  %15 = and i32 %11, -256
  %16 = sext i32 %15 to i64
  %17 = or i64 %14, %16
  %18 = icmp eq i1 %13, false
  store i64 %17, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_308d6, label %dec_label_pc_308c7

dec_label_pc_308c7:                               ; preds = %dec_label_pc_308b9
  call void @printLine(ptr @global_var_4a5fc)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_308d6

dec_label_pc_308d6:                               ; preds = %dec_label_pc_308c7, %dec_label_pc_308b9
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_3bd17:
  ret i32 1
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_3bd26:
  ret i32 0
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

