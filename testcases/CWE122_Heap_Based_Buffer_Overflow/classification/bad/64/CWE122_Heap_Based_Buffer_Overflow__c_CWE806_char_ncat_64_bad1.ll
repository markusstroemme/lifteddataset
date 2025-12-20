define void @anon0() local_unnamed_addr {
dec_label_pc_1ea99:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_1ead5, label %dec_label_pc_1eacb

dec_label_pc_1eacb:                               ; preds = %dec_label_pc_1ea99
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1ead5:                               ; preds = %dec_label_pc_1ea99
  %5 = call ptr @memset(ptr %1, i32 65, i32 99)
  %6 = add i64 %2, 99
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  %8 = bitcast ptr %stack_var_-24 to ptr
  call void @anon1(ptr nonnull %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_1eb17, label %dec_label_pc_1eb12

dec_label_pc_1eb12:                               ; preds = %dec_label_pc_1ead5
  call void @__stack_chk_fail()
  br label %dec_label_pc_1eb17

dec_label_pc_1eb17:                               ; preds = %dec_label_pc_1eb12, %dec_label_pc_1ead5
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_1ebae:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = call i32 @strlen(ptr %dataVoidPtr)
  %2 = bitcast ptr %stack_var_-72 to ptr
  %3 = call ptr @strncat(ptr nonnull %2, ptr %dataVoidPtr, i32 %1)
  call void @printLine(ptr %dataVoidPtr)
  %4 = bitcast ptr %dataVoidPtr to ptr
  call void @free(ptr %4)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_1ec69, label %dec_label_pc_1ec64

dec_label_pc_1ec64:                               ; preds = %dec_label_pc_1ebae
  call void @__stack_chk_fail()
  br label %dec_label_pc_1ec69

dec_label_pc_1ec69:                               ; preds = %dec_label_pc_1ec64, %dec_label_pc_1ebae
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3c6eb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3c70e, label %dec_label_pc_3c702

dec_label_pc_3c702:                               ; preds = %dec_label_pc_3c6eb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3c70e

dec_label_pc_3c70e:                               ; preds = %dec_label_pc_3c702, %dec_label_pc_3c6eb
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strncat(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

