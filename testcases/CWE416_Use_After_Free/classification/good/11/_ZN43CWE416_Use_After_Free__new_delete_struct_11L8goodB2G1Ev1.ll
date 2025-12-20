@global_var_4a8dc = external constant [21 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_39f61:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i32 @globalReturnsTrue()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_39fbc, label %dec_label_pc_39f83

dec_label_pc_39f83:                               ; preds = %dec_label_pc_39f61
  %4 = call i64 @_Znwm(i64 8)
  %5 = inttoptr i64 %4 to ptr
  store i32 1, ptr %5, align 4
  %6 = add i64 %4, 4
  %7 = inttoptr i64 %6 to ptr
  store i32 2, ptr %7, align 4
  %8 = icmp eq i64 %4, 0
  br i1 %8, label %dec_label_pc_39fbc, label %dec_label_pc_39faf

dec_label_pc_39faf:                               ; preds = %dec_label_pc_39f83
  %9 = inttoptr i64 %4 to ptr
  %10 = call i64 @_ZdlPvm(ptr %9, i64 8)
  br label %dec_label_pc_39fbc

dec_label_pc_39fbc:                               ; preds = %dec_label_pc_39faf, %dec_label_pc_39f83, %dec_label_pc_39f61
  %11 = call i32 @globalReturnsFalse()
  %12 = icmp eq i32 %11, 0
  %13 = icmp eq i1 %12, false
  %14 = zext i1 %13 to i64
  %15 = and i32 %11, -256
  %16 = sext i32 %15 to i64
  %17 = or i64 %14, %16
  %18 = icmp eq i1 %13, false
  store i64 %17, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_39fd9, label %dec_label_pc_39fca

dec_label_pc_39fca:                               ; preds = %dec_label_pc_39fbc
  call void @printLine(ptr @global_var_4a8dc)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_39fd9

dec_label_pc_39fd9:                               ; preds = %dec_label_pc_39fca, %dec_label_pc_39fbc
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

