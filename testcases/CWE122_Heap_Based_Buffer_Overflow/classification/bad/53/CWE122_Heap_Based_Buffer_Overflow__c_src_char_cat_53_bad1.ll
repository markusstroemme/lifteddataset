define void @anon0() local_unnamed_addr {
dec_label_pc_120fb:
  %0 = call ptr @malloc(i32 100)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_12126, label %dec_label_pc_1211c

dec_label_pc_1211c:                               ; preds = %dec_label_pc_120fb
  call void @exit(i32 -1)
  unreachable

dec_label_pc_12126:                               ; preds = %dec_label_pc_120fb
  %3 = bitcast ptr %0 to ptr
  %4 = call ptr @memset(ptr %0, i32 65, i32 99)
  %5 = ptrtoint ptr %0 to i64
  %6 = add i64 %5, 99
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  call void @anon1(ptr %3)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_121c6:
  call void @anon2(ptr %data)
  ret void
}

define void @anon2(ptr %data) local_unnamed_addr {
dec_label_pc_12204:
  call void @anon3(ptr %data)
  ret void
}

define void @anon3(ptr %data) local_unnamed_addr {
dec_label_pc_12242:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = bitcast ptr %stack_var_-72 to ptr
  %2 = call ptr @strcat(ptr nonnull %1, ptr %data)
  call void @printLine(ptr %data)
  %3 = bitcast ptr %data to ptr
  call void @free(ptr %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_122d7, label %dec_label_pc_122d2

dec_label_pc_122d2:                               ; preds = %dec_label_pc_12242
  call void @__stack_chk_fail()
  br label %dec_label_pc_122d7

dec_label_pc_122d7:                               ; preds = %dec_label_pc_122d2, %dec_label_pc_12242
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_24c88:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_24cab, label %dec_label_pc_24c9f

dec_label_pc_24c9f:                               ; preds = %dec_label_pc_24c88
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_24cab

dec_label_pc_24cab:                               ; preds = %dec_label_pc_24c9f, %dec_label_pc_24c88
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

